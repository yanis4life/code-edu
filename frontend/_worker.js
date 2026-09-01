const JWT_SECRET = 'code-edu-jwt-secret';
const JWT_REFRESH_SECRET = 'code-edu-refresh-secret';

async function handleApi(request, env) {
  const url = new URL(request.url);
  const path = url.pathname.replace(/^\/api\/v1\//, '');
  const method = request.method;
  const db = env.DB;

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

  function b64url(o) {
    return btoa(JSON.stringify(o)).replace(/=/g, '').replace(/\+/g, '-').replace(/\//g, '_');
  }

  async function createJWT(payload, secret, expiresIn) {
    const header = b64url({ alg: 'HS256', typ: 'JWT' });
    const now = Math.floor(Date.now() / 1000);
    const tokenPayload = { ...payload, iat: now, exp: now + expiresIn };
    const payloadStr = b64url(tokenPayload);
    const data = header + '.' + payloadStr;
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

  async function authenticate() {
    const auth = request.headers.get('Authorization');
    if (!auth || !auth.startsWith('Bearer ')) return null;
    try {
      const decoded = await verifyJWT(auth.split(' ')[1], JWT_SECRET);
      return await db.prepare('SELECT * FROM users WHERE id = ?').bind(decoded.id).first();
    } catch { return null; }
  }

  async function hashPassword(password) {
    const data = new TextEncoder().encode(password + 'code-edu-salt');
    const hashBuffer = await crypto.subtle.digest('SHA-256', data);
    return Array.from(new Uint8Array(hashBuffer)).map(b => b.toString(16).padStart(2, '0')).join('');
  }

  try {
    if (path === 'health' && method === 'GET') {
      return json({ status: 'healthy', timestamp: new Date().toISOString(), version: 'v1' });
    }

    if (path === 'auth/register' && method === 'POST') {
      const body = await request.json();
      if (!body.username || !body.email || !body.password) return error('Missing fields');
      if (body.password.length < 8) return error('Password too short');
      const existing = await db.prepare('SELECT id FROM users WHERE username = ? OR email = ?').bind(body.username, body.email).first();
      if (existing) return error('User exists', 409);
      const passwordHash = await hashPassword(body.password);
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
      const passwordHash = await hashPassword(body.password);
      if (passwordHash !== user.password_hash) return error('Invalid credentials', 401);
      await db.prepare('UPDATE users SET last_active = CURRENT_DATE WHERE id = ?').bind(user.id).run();
      const accessToken = await createJWT({ id: user.id, username: user.username, role: user.role }, JWT_SECRET, 900);
      const refreshToken = await createJWT({ id: user.id }, JWT_REFRESH_SECRET, 604800);
      const { password_hash, ...safe } = user;
      return json({ user: safe, accessToken, refreshToken });
    }

    if (path === 'auth/me' && method === 'GET') {
      const user = await authenticate();
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
      } catch { return error('Invalid token', 401); }
    }

    if (path.match(/^lessons(\?.*)?$/) && method === 'GET') {
      const language = url.searchParams.get('language') || 'python';
      const limit = Math.min(parseInt(url.searchParams.get('limit') || '100'), 100);
      const authUser = await authenticate().catch(() => null);
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
      const user = await authenticate();
      if (!user) return error('Unauthorized', 401);
      const lessonId = parseInt(path.split('/')[1]);
      const body = await request.json();
      const lesson = await db.prepare('SELECT * FROM lessons WHERE id = ? AND is_active = 1').bind(lessonId).first();
      if (!lesson) return error('Not found', 404);
      let isCorrect = false, score = 0;
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

    if (path === 'leaderboard' && method === 'GET') {
      const limit = Math.min(parseInt(url.searchParams.get('limit') || '50'), 100);
      const users = await db.prepare('SELECT id, username, display_name, avatar_url, xp, level, streak FROM users WHERE is_banned = 0 ORDER BY xp DESC LIMIT ?').bind(limit).all();
      return json({ users: users.results });
    }

    if (path === 'users/dashboard' && method === 'GET') {
      const user = await authenticate();
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
      const user = await authenticate();
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

    if (path === 'admin/stats' && method === 'GET') {
      const user = await authenticate();
      if (!user || user.role !== 'admin') return error('Forbidden', 403);
      const totalUsers = await db.prepare('SELECT COUNT(*) as count FROM users').first();
      const totalLessons = await db.prepare('SELECT COUNT(*) as count FROM lessons').first();
      const totalSubmissions = await db.prepare('SELECT COUNT(*) as count FROM submissions').first();
      const totalAchievements = await db.prepare('SELECT COUNT(*) as count FROM achievements').first();
      const activeToday = await db.prepare("SELECT COUNT(*) as count FROM users WHERE last_active = CURRENT_DATE").first();
      return json({ totalUsers: totalUsers.count, totalLessons: totalLessons.count, totalSubmissions: totalSubmissions.count, totalAchievements: totalAchievements.count, activeToday: activeToday.count });
    }

    if (path === 'admin/users' && method === 'GET') {
      const user = await authenticate();
      if (!user || user.role !== 'admin') return error('Forbidden', 403);
      const users = await db.prepare('SELECT id, username, email, display_name, xp, level, streak, is_banned, role, created_at FROM users ORDER BY created_at DESC LIMIT 50').all();
      return json({ users: users.results });
    }

    if (path.match(/^admin\/users\/\d+\/ban$/) && method === 'PUT') {
      const user = await authenticate();
      if (!user || user.role !== 'admin') return error('Forbidden', 403);
      const userId = parseInt(path.split('/')[3]);
      const body = await request.json();
      await db.prepare('UPDATE users SET is_banned = ? WHERE id = ?').bind(body.ban ? 1 : 0, userId).run();
      return json({ message: body.ban ? 'Banned' : 'Unbanned' });
    }

    if (path === 'admin/lessons' && method === 'POST') {
      const user = await authenticate();
      if (!user || user.role !== 'admin') return error('Forbidden', 403);
      const body = await request.json();
      await db.prepare('INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 1)').bind(body.language, body.levelNumber, body.title, body.theoryText || '', body.codeExample || '', body.challengeType, body.challengeDescription || '', body.challengeTemplate || '', body.correctAnswer, body.hint || '', body.xpReward || 50, body.difficulty || 'easy').run();
      return json({ message: 'Lesson created' }, 201);
    }

    if (path.match(/^admin\/users\/\d+\/progress$/) && method === 'DELETE') {
      const user = await authenticate();
      if (!user || user.role !== 'admin') return error('Forbidden', 403);
      const userId = parseInt(path.split('/')[3]);
      await db.prepare('DELETE FROM user_progress WHERE user_id = ?').bind(userId).run();
      await db.prepare('UPDATE users SET xp = 0, level = 1 WHERE id = ?').bind(userId).run();
      return json({ message: 'Progress reset' });
    }

    if (path === 'admin/storage' && method === 'GET') {
      const user = await authenticate();
      if (!user || user.role !== 'admin') return error('Forbidden', 403);
      const files = await db.prepare('SELECT f.*, u.username FROM file_metadata f LEFT JOIN users u ON f.user_id = u.id ORDER BY f.created_at DESC LIMIT 100').all();
      const totalSize = await db.prepare('SELECT COALESCE(SUM(size), 0) as total FROM file_metadata').first();
      return json({ files: files.results, totalSize: totalSize.total });
    }

    if (path.match(/^challenges(\?.*)?$/) && method === 'GET') {
      const language = url.searchParams.get('language') || 'python';
      const challenges = await db.prepare('SELECT id, title, description, difficulty, language, xp_reward, time_limit FROM challenges WHERE language = ? AND is_active = 1 ORDER BY difficulty ASC').bind(language).all();
      return json({ challenges: challenges.results });
    }

    if (path.match(/^challenges\/\d+$/) && method === 'GET') {
      const challenge = await db.prepare('SELECT * FROM challenges WHERE id = ? AND is_active = 1').bind(parseInt(path.split('/')[1])).first();
      if (!challenge) return error('Not found', 404);
      return json({ challenge });
    }

    if (path.match(/^challenges\/\d+\/submit$/) && method === 'POST') {
      const user = await authenticate();
      if (!user) return error('Unauthorized', 401);
      const challengeId = parseInt(path.split('/')[1]);
      const body = await request.json();
      const challenge = await db.prepare('SELECT * FROM challenges WHERE id = ? AND is_active = 1').bind(challengeId).first();
      if (!challenge) return error('Not found', 404);
      const isCorrect = (body.code || '').replace(/\s+/g, '') === (challenge.solution || '').replace(/\s+/g, '');
      await db.prepare('INSERT INTO submissions (user_id, challenge_id, code, language, status, result, score, is_public) VALUES (?, ?, ?, ?, ?, ?, ?, ?)').bind(user.id, challengeId, body.code || '', challenge.language, isCorrect ? 'passed' : 'failed', isCorrect ? 'All tests passed' : 'Tests failed', isCorrect ? 100 : 0, body.isPublic ? 1 : 0).run();
      if (isCorrect) {
        const newXp = (user.xp || 0) + challenge.xp_reward;
        const newLevel = Math.floor(Math.sqrt(newXp / 100)) + 1;
        await db.prepare('UPDATE users SET xp = ?, level = ? WHERE id = ?').bind(newXp, newLevel, user.id).run();
      }
      return json({ isCorrect, score: isCorrect ? 100 : 0, xpEarned: isCorrect ? challenge.xp_reward : 0 });
    }

    if (path.match(/^submissions(\?.*)?$/) && method === 'GET') {
      const limit = Math.min(parseInt(url.searchParams.get('limit') || '20'), 50);
      const submissions = await db.prepare('SELECT s.id, s.code, s.language, s.score, s.status, s.created_at, l.title as lesson_title, c.title as challenge_title, u.username FROM submissions s LEFT JOIN lessons l ON s.lesson_id = l.id LEFT JOIN challenges c ON s.challenge_id = c.id LEFT JOIN users u ON s.user_id = u.id WHERE s.is_public = 1 ORDER BY s.created_at DESC LIMIT ?').bind(limit).all();
      return json({ submissions: submissions.results });
    }

    if (path.match(/^submissions\/\d+$/) && method === 'GET') {
      const submission = await db.prepare('SELECT s.*, u.username, u.display_name, u.avatar_url FROM submissions s LEFT JOIN users u ON s.user_id = u.id WHERE s.id = ?').bind(parseInt(path.split('/')[1])).first();
      if (!submission) return error('Not found', 404);
      const comments = await db.prepare('SELECT c.*, u.username, u.avatar_url FROM comments c LEFT JOIN users u ON c.user_id = u.id WHERE c.submission_id = ? ORDER BY c.created_at DESC').bind(submission.id).all();
      submission.comments = comments.results || [];
      return json({ submission });
    }

    if (path.match(/^submissions\/\d+\/comments$/) && method === 'POST') {
      const user = await authenticate();
      if (!user) return error('Unauthorized', 401);
      const body = await request.json();
      if (!body.content) return error('Content required');
      const result = await db.prepare('INSERT INTO comments (user_id, submission_id, content, rating) VALUES (?, ?, ?, ?)').bind(user.id, parseInt(path.split('/')[1]), body.content, body.rating || 0).run();
      const comment = await db.prepare('SELECT c.*, u.username, u.avatar_url FROM comments c LEFT JOIN users u ON c.user_id = u.id WHERE c.id = ?').bind(result.meta.last_row_id).first();
      return json({ comment }, 201);
    }

    if (path.match(/^contests(\?.*)?$/) && method === 'GET') {
      const contests = await db.prepare('SELECT * FROM contests ORDER BY start_time DESC LIMIT 20').all();
      return json({ contests: contests.results });
    }

    if (path.match(/^contests\/\d+$/) && method === 'GET') {
      const contest = await db.prepare('SELECT * FROM contests WHERE id = ?').bind(parseInt(path.split('/')[1])).first();
      if (!contest) return error('Not found', 404);
      return json({ contest });
    }

    if (path.match(/^contests\/\d+\/join$/) && method === 'POST') {
      const user = await authenticate();
      if (!user) return error('Unauthorized', 401);
      const contestId = parseInt(path.split('/')[1]);
      const existing = await db.prepare('SELECT * FROM contest_participants WHERE contest_id = ? AND user_id = ?').bind(contestId, user.id).first();
      if (existing) return error('Already joined', 409);
      await db.prepare('INSERT INTO contest_participants (contest_id, user_id) VALUES (?, ?)').bind(contestId, user.id).run();
      return json({ message: 'Joined' }, 201);
    }

    if (path === 'notifications' && method === 'GET') {
      const user = await authenticate();
      if (!user) return error('Unauthorized', 401);
      const notifications = await db.prepare('SELECT * FROM notifications WHERE user_id = ? ORDER BY created_at DESC LIMIT 50').bind(user.id).all();
      const unread = await db.prepare('SELECT COUNT(*) as count FROM notifications WHERE user_id = ? AND is_read = 0').bind(user.id).first();
      return json({ notifications: notifications.results, unread: unread.count });
    }

    if (path.match(/^notifications\/read-all$/) && method === 'PUT') {
      const user = await authenticate();
      if (!user) return error('Unauthorized', 401);
      await db.prepare('UPDATE notifications SET is_read = 1 WHERE user_id = ? AND is_read = 0').bind(user.id).run();
      return json({ message: 'All read' });
    }

    if (path === 'achievements' && method === 'GET') {
      const user = await authenticate();
      if (!user) return error('Unauthorized', 401);
      const achievements = await db.prepare('SELECT a.* FROM achievements a WHERE a.user_id = ? ORDER BY a.awarded_at DESC').bind(user.id).all();
      const allBadges = await db.prepare('SELECT * FROM badges ORDER BY xp_reward ASC').all();
      return json({ earned: achievements.results, available: allBadges.results });
    }

    if (path === 'friends' && method === 'GET') {
      const user = await authenticate();
      if (!user) return error('Unauthorized', 401);
      const friends = await db.prepare("SELECT f.id, f.status, f.created_at, u.id as friend_id, u.username, u.display_name, u.avatar_url, u.xp, u.level, u.streak FROM friendships f LEFT JOIN users u ON (CASE WHEN f.requester_id = ? THEN f.receiver_id ELSE f.requester_id END) = u.id WHERE (f.requester_id = ? OR f.receiver_id = ?) AND f.status = 'accepted'").bind(user.id, user.id, user.id).all();
      return json({ friends: friends.results });
    }

    if (path === 'friends/requests' && method === 'GET') {
      const user = await authenticate();
      if (!user) return error('Unauthorized', 401);
      const requests = await db.prepare("SELECT f.id, f.created_at, u.id as requester_id, u.username, u.display_name, u.avatar_url FROM friendships f LEFT JOIN users u ON f.requester_id = u.id WHERE f.receiver_id = ? AND f.status = 'pending'").bind(user.id).all();
      return json({ requests: requests.results });
    }

    if (path.match(/^friends\/request\/.+$/) && method === 'POST') {
      const user = await authenticate();
      if (!user) return error('Unauthorized', 401);
      const targetUsername = path.split('/')[2];
      const targetUser = await db.prepare('SELECT id FROM users WHERE username = ?').bind(targetUsername).first();
      if (!targetUser) return error('User not found', 404);
      if (targetUser.id === user.id) return error('Cannot friend yourself');
      const existing = await db.prepare('SELECT * FROM friendships WHERE (requester_id = ? AND receiver_id = ?) OR (requester_id = ? AND receiver_id = ?)').bind(user.id, targetUser.id, targetUser.id, user.id).first();
      if (existing) return error('Already exists', 409);
      await db.prepare('INSERT INTO friendships (requester_id, receiver_id, status) VALUES (?, ?, ?)').bind(user.id, targetUser.id, 'pending').run();
      return json({ message: 'Request sent' }, 201);
    }

    if (path.match(/^friends\/respond\/\d+$/) && method === 'POST') {
      const user = await authenticate();
      if (!user) return error('Unauthorized', 401);
      const body = await request.json();
      const requestId = parseInt(path.split('/')[2]);
      const fr = await db.prepare("SELECT * FROM friendships WHERE id = ? AND receiver_id = ? AND status = 'pending'").bind(requestId, user.id).first();
      if (!fr) return error('Not found', 404);
      await db.prepare('UPDATE friendships SET status = ?, updated_at = CURRENT_TIMESTAMP WHERE id = ?').bind(body.action === 'accept' ? 'accepted' : 'rejected', requestId).run();
      return json({ message: 'Responded' });
    }

    if (path.match(/^friends\/\d+$/) && method === 'DELETE') {
      const user = await authenticate();
      if (!user) return error('Unauthorized', 401);
      await db.prepare('DELETE FROM friendships WHERE (requester_id = ? AND receiver_id = ?) OR (requester_id = ? AND receiver_id = ?)').bind(user.id, parseInt(path.split('/')[1]), parseInt(path.split('/')[1]), user.id).run();
      return json({ message: 'Removed' });
    }

    if (path === 'messages' && method === 'GET') {
      const user = await authenticate();
      if (!user) return error('Unauthorized', 401);
      const messages = await db.prepare('SELECT m.*, u.username as sender_username FROM messages m LEFT JOIN users u ON m.sender_id = u.id WHERE m.sender_id = ? OR m.receiver_id = ? ORDER BY m.created_at DESC LIMIT 50').bind(user.id, user.id).all();
      const unread = await db.prepare('SELECT COUNT(*) as count FROM messages WHERE receiver_id = ? AND is_read = 0').bind(user.id).first();
      return json({ messages: messages.results, unread: unread.count });
    }

    if (path.match(/^messages\/send$/) && method === 'POST') {
      const user = await authenticate();
      if (!user) return error('Unauthorized', 401);
      const body = await request.json();
      if (!body.receiverId || !body.content) return error('Missing fields');
      const result = await db.prepare('INSERT INTO messages (sender_id, receiver_id, content, attachment_url, attachment_name) VALUES (?, ?, ?, ?, ?)').bind(user.id, body.receiverId, body.content, body.attachmentUrl || '', body.attachmentName || '').run();
      return json({ message: { id: result.meta.last_row_id } }, 201);
    }

    if (path.match(/^messages\/conversation\/\d+$/) && method === 'GET') {
      const user = await authenticate();
      if (!user) return error('Unauthorized', 401);
      const otherId = parseInt(path.split('/')[2]);
      const messages = await db.prepare('SELECT m.*, u.username as sender_username FROM messages m LEFT JOIN users u ON m.sender_id = u.id WHERE (m.sender_id = ? AND m.receiver_id = ?) OR (m.sender_id = ? AND m.receiver_id = ?) ORDER BY m.created_at ASC LIMIT 50').bind(user.id, otherId, otherId, user.id).all();
      await db.prepare('UPDATE messages SET is_read = 1 WHERE sender_id = ? AND receiver_id = ? AND is_read = 0').bind(otherId, user.id).run();
      return json({ messages: messages.results });
    }

    if (path.match(/^snippets(\?.*)?$/) && method === 'GET') {
      const user = await authenticate();
      if (!user) return error('Unauthorized', 401);
      const snippets = await db.prepare('SELECT s.*, u.username FROM snippets s LEFT JOIN users u ON s.user_id = u.id WHERE s.user_id = ? OR s.is_public = 1 ORDER BY s.created_at DESC LIMIT 50').bind(user.id).all();
      return json({ snippets: snippets.results });
    }

    if (path === 'snippets' && method === 'POST') {
      const user = await authenticate();
      if (!user) return error('Unauthorized', 401);
      const body = await request.json();
      if (!body.title || !body.language || !body.code) return error('Missing fields');
      await db.prepare('INSERT INTO snippets (user_id, title, language, code, description, is_public) VALUES (?, ?, ?, ?, ?, ?)').bind(user.id, body.title, body.language, body.code, body.description || '', body.isPublic ? 1 : 0).run();
      return json({ message: 'Saved' }, 201);
    }

    if (path.match(/^snippets\/\d+$/) && method === 'DELETE') {
      const user = await authenticate();
      if (!user) return error('Unauthorized', 401);
      await db.prepare('DELETE FROM snippets WHERE id = ? AND user_id = ?').bind(parseInt(path.split('/')[1]), user.id).run();
      return json({ message: 'Deleted' });
    }

    if (path === 'upload/avatar' && method === 'POST') {
      const user = await authenticate();
      if (!user) return error('Unauthorized', 401);
      const r2 = env.R2_STORAGE;
      if (!r2) return error('Storage unavailable', 503);
      const formData = await request.formData();
      const file = formData.get('file');
      if (!file) return error('No file', 400);
      const key = 'avatars/' + crypto.randomUUID() + '.webp';
      await r2.put(key, await file.arrayBuffer(), { httpMetadata: { contentType: file.type } });
      const publicUrl = 'https://pub-xxxx.r2.dev/' + key;
      await db.prepare('UPDATE users SET avatar_url = ? WHERE id = ?').bind(publicUrl, user.id).run();
      return json({ avatarUrl: publicUrl });
    }

    if (path === 'upload/avatar' && method === 'DELETE') {
      const user = await authenticate();
      if (!user) return error('Unauthorized', 401);
      await db.prepare("UPDATE users SET avatar_url = '' WHERE id = ?").bind(user.id).run();
      return json({ message: 'Deleted' });
    }

    return error('Not found', 404);
  } catch (err) {
    return error(err.message, 500);
  }
}

export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);

    if (url.pathname.startsWith('/api/')) {
      return handleApi(request, env);
    }

    return env.ASSETS.fetch(request);
  }
};