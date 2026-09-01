const JWT_SECRET = 'code-edu-jwt-secret';
const JWT_REFRESH_SECRET = 'code-edu-refresh-secret';

export async function onRequest(context) {
  const { request, env } = context;
  const url = new URL(request.url);
  const path = url.pathname.replace(/^\/api\/v1\//, '');
  const method = request.method;

  const corsHeaders = {
    'Content-Type': 'application/json',
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, PATCH, OPTIONS',
    'Access-Control-Allow-Headers': 'Content-Type, Authorization'
  };

  if (method === 'OPTIONS') {
    return new Response(null, { status: 204, headers: corsHeaders });
  }

  function json(data, status = 200) {
    return new Response(JSON.stringify(data), { status, headers: corsHeaders });
  }

  function error(msg, status = 400) {
    return json({ error: msg, status }, status);
  }

  const db = env.DB;

  try {
    if (path === 'health' && method === 'GET') {
      return json({ status: 'healthy', timestamp: new Date().toISOString(), version: 'v1' });
    }

    if (path === 'auth/register' && method === 'POST') {
      const body = await request.json();
      if (!body.username || !body.email || !body.password) return error('Missing fields');
      if (body.password.length < 8) return error('Password too short');

      const existing = await db.prepare('SELECT id FROM users WHERE username = ? OR email = ?').bind(body.username, body.email).first();
      if (existing) return error('User already exists', 409);

      const encoder = new TextEncoder();
      const data = encoder.encode(body.password + 'code-edu-salt');
      const hashBuffer = await crypto.subtle.digest('SHA-256', data);
      const hashArray = Array.from(new Uint8Array(hashBuffer));
      const passwordHash = hashArray.map(b => b.toString(16).padStart(2, '0')).join('');

      const result = await db.prepare('INSERT INTO users (username, email, password_hash, display_name) VALUES (?, ?, ?, ?)').bind(body.username, body.email, passwordHash, body.displayName || body.username).run();
      const user = await db.prepare('SELECT id, username, display_name, bio, avatar_url, xp, level, streak, role, created_at FROM users WHERE id = ?').bind(result.meta.last_row_id).first();

      const accessToken = await createJWT({ id: user.id, username: user.username, role: user.role }, JWT_SECRET, 900);
      const refreshToken = await createJWT({ id: user.id }, JWT_REFRESH_SECRET, 604800);

      return json({ user, accessToken, refreshToken }, 201);
    }

    if (path === 'auth/login' && method === 'POST') {
      const body = await request.json();
      if (!body.username || !body.password) return error('Missing credentials');

      const user = await db.prepare('SELECT * FROM users WHERE username = ? OR email = ?').bind(body.username, body.username).first();
      if (!user) return error('Invalid credentials', 401);
      if (user.is_banned) return error('Account banned', 403);

      const encoder = new TextEncoder();
      const data = encoder.encode(body.password + 'code-edu-salt');
      const hashBuffer = await crypto.subtle.digest('SHA-256', data);
      const hashArray = Array.from(new Uint8Array(hashBuffer));
      const passwordHash = hashArray.map(b => b.toString(16).padStart(2, '0')).join('');

      if (passwordHash !== user.password_hash) return error('Invalid credentials', 401);

      await db.prepare('UPDATE users SET last_active = CURRENT_DATE WHERE id = ?').bind(user.id).run();

      const accessToken = await createJWT({ id: user.id, username: user.username, role: user.role }, JWT_SECRET, 900);
      const refreshToken = await createJWT({ id: user.id }, JWT_REFRESH_SECRET, 604800);

      const { password_hash, ...safe } = user;
      return json({ user: safe, accessToken, refreshToken });
    }

    if (path === 'auth/me' && method === 'GET') {
      const user = await authenticate(request, db);
      if (!user) return error('Unauthorized', 401);
      const { password_hash, ...safe } = user;
      return json({ user: safe });
    }

    if (path === 'auth/refresh' && method === 'POST') {
      const body = await request.json();
      if (!body.refreshToken) return error('Missing token', 401);

      try {
        const payload = await verifyJWT(body.refreshToken, JWT_REFRESH_SECRET);
        const user = await db.prepare('SELECT * FROM users WHERE id = ?').bind(payload.id).first();
        if (!user || user.is_banned) return error('Invalid token', 401);
        const accessToken = await createJWT({ id: user.id, username: user.username, role: user.role }, JWT_SECRET, 900);
        const refreshToken = await createJWT({ id: user.id }, JWT_REFRESH_SECRET, 604800);
        return json({ accessToken, refreshToken });
      } catch {
        return error('Invalid token', 401);
      }
    }

    if (path.match(/^lessons(\?.*)?$/) && method === 'GET') {
      const language = url.searchParams.get('language') || 'python';
      const limit = Math.min(parseInt(url.searchParams.get('limit') || '100'), 100);
      const authUser = await authenticate(request, db).catch(() => null);
      const userId = authUser ? authUser.id : 0;
      const lessons = await db.prepare('SELECT l.id, l.language, l.level_number, l.title, l.difficulty, l.xp_reward, l.challenge_type, COALESCE(up.completed, 0) as completed, COALESCE(up.score, 0) as score FROM lessons l LEFT JOIN user_progress up ON l.id = up.lesson_id AND up.user_id = ? WHERE l.language = ? AND l.is_active = 1 ORDER BY l.level_number ASC LIMIT ?').bind(userId, language, limit).all();
      return json({ lessons: lessons.results, language });
    }

    if (path.match(/^lessons\/\d+$/) && method === 'GET') {
      const lessonId = parseInt(path.split('/')[1]);
      const lesson = await db.prepare('SELECT * FROM lessons WHERE id = ? AND is_active = 1').bind(lessonId).first();
      if (!lesson) return error('Not found', 404);
      return json({ lesson });
    }

    if (path.match(/^lessons\/\d+\/submit$/) && method === 'POST') {
      const user = await authenticate(request, db);
      if (!user) return error('Unauthorized', 401);
      const lessonId = parseInt(path.split('/')[1]);
      const body = await request.json();
      const lesson = await db.prepare('SELECT * FROM lessons WHERE id = ? AND is_active = 1').bind(lessonId).first();
      if (!lesson) return error('Lesson not found', 404);

      let isCorrect = false;
      let score = 0;
      if (lesson.challenge_type === 'true_false' || lesson.challenge_type === 'multiple_choice') {
        isCorrect = String(body.answer).trim().toLowerCase() === String(lesson.correct_answer).trim().toLowerCase();
        score = isCorrect ? 100 : 0;
      } else {
        const uCode = (body.code || '').replace(/\s+/g, '');
        const cCode = (lesson.correct_answer || '').replace(/\s+/g, '');
        isCorrect = uCode === cCode;
        score = isCorrect ? 100 : Math.max(0, 100 - Math.abs(uCode.length - cCode.length) * 5);
      }

      const existing = await db.prepare('SELECT * FROM user_progress WHERE user_id = ? AND lesson_id = ?').bind(user.id, lessonId).first();
      if (existing) {
        await db.prepare('UPDATE user_progress SET completed = ?, attempts = attempts + 1, score = MAX(score, ?), completed_at = CASE WHEN ? = 1 THEN CURRENT_TIMESTAMP ELSE completed_at END WHERE id = ?').bind(isCorrect ? 1 : 0, score, isCorrect ? 1 : 0, existing.id).run();
      } else {
        await db.prepare('INSERT INTO user_progress (user_id, lesson_id, completed, attempts, score, completed_at) VALUES (?, ?, ?, 1, ?, CASE WHEN ? = 1 THEN CURRENT_TIMESTAMP ELSE NULL END)').bind(user.id, lessonId, isCorrect ? 1 : 0, score, isCorrect ? 1 : 0).run();
      }

      if (isCorrect && (!existing || !existing.completed)) {
        const newXp = (user.xp || 0) + lesson.xp_reward;
        const newLevel = Math.floor(Math.sqrt(newXp / 100)) + 1;
        await db.prepare('UPDATE users SET xp = ?, level = ? WHERE id = ?').bind(newXp, newLevel, user.id).run();
      }

      return json({ isCorrect, score, xpEarned: isCorrect ? lesson.xp_reward : 0, hint: !isCorrect && lesson.hint ? lesson.hint : null });
    }

    // Admin endpoints
    if (path === 'admin/stats' && method === 'GET') {
      const user = await authenticate(request, db);
      if (!user || user.role !== 'admin') return error('Forbidden', 403);
      const totalUsers = await db.prepare('SELECT COUNT(*) as count FROM users').first();
      const totalLessons = await db.prepare('SELECT COUNT(*) as count FROM lessons').first();
      const totalSubmissions = await db.prepare('SELECT COUNT(*) as count FROM submissions').first();
      const totalAchievements = await db.prepare('SELECT COUNT(*) as count FROM achievements').first();
      const activeToday = await db.prepare("SELECT COUNT(*) as count FROM users WHERE last_active = CURRENT_DATE").first();
      return json({ totalUsers: totalUsers.count, totalLessons: totalLessons.count, totalSubmissions: totalSubmissions.count, totalAchievements: totalAchievements.count, activeToday: activeToday.count });
    }

    if (path === 'admin/users' && method === 'GET') {
      const user = await authenticate(request, db);
      if (!user || user.role !== 'admin') return error('Forbidden', 403);
      const users = await db.prepare('SELECT id, username, email, display_name, xp, level, streak, is_banned, role, created_at FROM users ORDER BY created_at DESC LIMIT 50').all();
      return json({ users: users.results });
    }

    if (path.match(/^admin\/users\/\d+\/ban$/) && method === 'PUT') {
      const user = await authenticate(request, db);
      if (!user || user.role !== 'admin') return error('Forbidden', 403);
      const userId = parseInt(path.split('/')[3]);
      const body = await request.json();
      await db.prepare('UPDATE users SET is_banned = ? WHERE id = ?').bind(body.ban ? 1 : 0, userId).run();
      return json({ message: body.ban ? 'Banned' : 'Unbanned' });
    }

    if (path === 'leaderboard' && method === 'GET') {
      const limit = Math.min(parseInt(url.searchParams.get('limit') || '50'), 100);
      const users = await db.prepare('SELECT id, username, display_name, avatar_url, xp, level, streak FROM users WHERE is_banned = 0 ORDER BY xp DESC LIMIT ?').bind(limit).all();
      return json({ users: users.results });
    }

    if (path === 'users/dashboard' && method === 'GET') {
      const user = await authenticate(request, db);
      if (!user) return error('Unauthorized', 401);
      const lessonCount = await db.prepare('SELECT COUNT(*) as count FROM user_progress WHERE user_id = ? AND completed = 1').bind(user.id).first();
      const rank = await db.prepare('SELECT COUNT(*) + 1 as rank FROM users WHERE xp > ? AND is_banned = 0').bind(user.xp || 0).first();
      const nextLesson = await db.prepare('SELECT l.* FROM lessons l WHERE l.is_active = 1 AND l.id NOT IN (SELECT lesson_id FROM user_progress WHERE user_id = ? AND completed = 1) ORDER BY l.level_number ASC LIMIT 1').bind(user.id).first();
      const recentAchievements = await db.prepare('SELECT * FROM achievements WHERE user_id = ? ORDER BY awarded_at DESC LIMIT 5').bind(user.id).all();
      const { password_hash, ...safe } = user;
      return json({ user: safe, lessonsCompleted: lessonCount.count, streak: user.streak || 0, rank: rank.rank, nextLesson, recentAchievements: recentAchievements.results });
    }

    if (path.match(/^users\/profile\/.+$/) && method === 'GET') {
      const username = path.split('/')[2];
      const u = await db.prepare('SELECT id, username, display_name, bio, avatar_url, xp, level, streak, role, created_at FROM users WHERE username = ?').bind(username).first();
      if (!u) return error('Not found', 404);
      const lc = await db.prepare('SELECT COUNT(*) as count FROM user_progress WHERE user_id = ? AND completed = 1').bind(u.id).first();
      const ac = await db.prepare('SELECT COUNT(*) as count FROM achievements WHERE user_id = ?').bind(u.id).first();
      u.lessonsCompleted = lc.count;
      u.achievements = ac.count;
      return json({ user: u });
    }

    if (path === 'users/profile' && method === 'PUT') {
      const user = await authenticate(request, db);
      if (!user) return error('Unauthorized', 401);
      const body = await request.json();
      await db.prepare('UPDATE users SET display_name = ?, bio = ? WHERE id = ?').bind(body.displayName || '', body.bio || '', user.id).run();
      const updated = await db.prepare('SELECT id, username, display_name, bio, avatar_url, xp, level, streak, role, created_at FROM users WHERE id = ?').bind(user.id).first();
      return json({ user: updated });
    }

    if (path === 'search' && method === 'GET') {
      const q = url.searchParams.get('q');
      if (!q || q.trim().length < 2) return error('Query too short');
      const term = '%' + q.trim() + '%';
      const results = { lessons: [], users: [] };
      results.lessons = (await db.prepare('SELECT id, title, language, difficulty, level_number FROM lessons WHERE is_active = 1 AND (title LIKE ? OR theory_text LIKE ?) LIMIT 10').bind(term, term).all()).results;
      results.users = (await db.prepare('SELECT id, username, display_name, avatar_url, xp, level FROM users WHERE is_banned = 0 AND (username LIKE ? OR display_name LIKE ?) LIMIT 10').bind(term, term).all()).results;
      return json({ results, query: q.trim() });
    }

    if (path.match(/^challenges(\?.*)?$/) && method === 'GET') {
      const language = url.searchParams.get('language') || 'python';
      const challenges = await db.prepare('SELECT id, title, description, difficulty, language, xp_reward, time_limit FROM challenges WHERE language = ? AND is_active = 1 ORDER BY difficulty ASC').bind(language).all();
      return json({ challenges: challenges.results });
    }

    if (path.match(/^contests(\?.*)?$/) && method === 'GET') {
      const contests = await db.prepare('SELECT * FROM contests ORDER BY start_time DESC LIMIT 20').all();
      return json({ contests: contests.results });
    }

    if (path === 'notifications' && method === 'GET') {
      const user = await authenticate(request, db);
      if (!user) return error('Unauthorized', 401);
      const notifications = await db.prepare('SELECT * FROM notifications WHERE user_id = ? ORDER BY created_at DESC LIMIT 50').bind(user.id).all();
      const unread = await db.prepare('SELECT COUNT(*) as count FROM notifications WHERE user_id = ? AND is_read = 0').bind(user.id).first();
      return json({ notifications: notifications.results, unread: unread.count });
    }

    if (path === 'achievements' && method === 'GET') {
      const user = await authenticate(request, db);
      if (!user) return error('Unauthorized', 401);
      const achievements = await db.prepare('SELECT a.* FROM achievements a WHERE a.user_id = ? ORDER BY a.awarded_at DESC').bind(user.id).all();
      const allBadges = await db.prepare('SELECT * FROM badges ORDER BY xp_reward ASC').all();
      return json({ earned: achievements.results, available: allBadges.results });
    }

    if (path === 'friends' && method === 'GET') {
      const user = await authenticate(request, db);
      if (!user) return error('Unauthorized', 401);
      const friends = await db.prepare("SELECT f.id, f.status, f.created_at, u.id as friend_id, u.username, u.display_name, u.avatar_url, u.xp, u.level, u.streak FROM friendships f LEFT JOIN users u ON (CASE WHEN f.requester_id = ? THEN f.receiver_id ELSE f.requester_id END) = u.id WHERE (f.requester_id = ? OR f.receiver_id = ?) AND f.status = 'accepted'").bind(user.id, user.id, user.id).all();
      return json({ friends: friends.results });
    }

    return error('Not found', 404);
  } catch (err) {
    return error(err.message, 500);
  }
}

async function createJWT(payload, secret, expiresInSeconds) {
  const header = { alg: 'HS256', typ: 'JWT' };
  const now = Math.floor(Date.now() / 1000);
  const tokenPayload = { ...payload, iat: now, exp: now + expiresInSeconds };
  const b64 = (o) => btoa(JSON.stringify(o)).replace(/=/g, '').replace(/\+/g, '-').replace(/\//g, '_');
  const data = b64(header) + '.' + b64(tokenPayload);
  const key = await crypto.subtle.importKey('raw', new TextEncoder().encode(secret), { name: 'HMAC', hash: 'SHA-256' }, false, ['sign']);
  const sig = Array.from(new Uint8Array(await crypto.subtle.sign('HMAC', key, new TextEncoder().encode(data)))).map(b => String.fromCharCode(b)).join('');
  return data + '.' + btoa(sig).replace(/=/g, '').replace(/\+/g, '-').replace(/\//g, '_');
}

async function verifyJWT(token, secret) {
  const parts = token.split('.');
  if (parts.length !== 3) throw new Error('Invalid token');
  const key = await crypto.subtle.importKey('raw', new TextEncoder().encode(secret), { name: 'HMAC', hash: 'SHA-256' }, false, ['verify']);
  const sig = Uint8Array.from(atob(parts[2].replace(/-/g, '+').replace(/_/g, '/')), c => c.charCodeAt(0));
  const valid = await crypto.subtle.verify('HMAC', key, sig, new TextEncoder().encode(parts[0] + '.' + parts[1]));
  if (!valid) throw new Error('Invalid signature');
  const payload = JSON.parse(atob(parts[1]));
  if (payload.exp < Math.floor(Date.now() / 1000)) throw new Error('Expired');
  return payload;
}

async function authenticate(request, db) {
  const auth = request.headers.get('Authorization');
  if (!auth || !auth.startsWith('Bearer ')) return null;
  try {
    const decoded = await verifyJWT(auth.split(' ')[1], JWT_SECRET);
    return await db.prepare('SELECT * FROM users WHERE id = ?').bind(decoded.id).first();
  } catch {
    return null;
  }
}