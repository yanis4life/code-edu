const JWT_SECRET = 'code-edu-jwt-secret';
const JWT_REFRESH_SECRET = 'code-edu-refresh-secret';

export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);
    if (url.pathname.startsWith('/api/')) {
      return handleApi(request, env);
    }
    if (url.pathname.startsWith('/avatars/') && env.R2_STORAGE) {
      const key = url.pathname.slice(1);
      const obj = await env.R2_STORAGE.get(key);
      if (obj) {
        const headers = { 'Content-Type': obj.httpMetadata?.contentType || 'image/webp', 'Cache-Control': 'public, max-age=31536000' };
        return new Response(obj.body, { headers });
      }
    }
    return env.ASSETS.fetch(request);
  }
};

async function handleApi(request, env) {
  const url = new URL(request.url);
  const path = url.pathname.replace(/^\/api\/v1\//, '');
  const method = request.method;
  const db = env.DB;

  const c = {
    'Content-Type': 'application/json',
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, PATCH, OPTIONS',
    'Access-Control-Allow-Headers': 'Content-Type, Authorization'
  };

  if (method === 'OPTIONS') return new Response(null, { status: 204, headers: c });

  function j(data, status = 200) { return new Response(JSON.stringify(data), { status, headers: c }); }
  function e(msg, status = 400) { return j({ error: msg, status }, status); }

  function b(o) { return btoa(JSON.stringify(o)).replace(/=/g, '').replace(/\+/g, '-').replace(/\//g, '_'); }

  async function jwt(payload, secret, exp) {
    const h = b({ alg: 'HS256', typ: 'JWT' });
    const n = Math.floor(Date.now() / 1000);
    const d = h + '.' + b({ ...payload, iat: n, exp: n + exp });
    const k = await crypto.subtle.importKey('raw', new TextEncoder().encode(secret), { name: 'HMAC', hash: 'SHA-256' }, false, ['sign']);
    const s = Array.from(new Uint8Array(await crypto.subtle.sign('HMAC', k, new TextEncoder().encode(d)))).map(x => String.fromCharCode(x)).join('');
    return d + '.' + btoa(s).replace(/=/g, '').replace(/\+/g, '-').replace(/\//g, '_');
  }

  async function vjwt(token, secret) {
    const p = token.split('.');
    if (p.length !== 3) throw new Error('Invalid');
    const k = await crypto.subtle.importKey('raw', new TextEncoder().encode(secret), { name: 'HMAC', hash: 'SHA-256' }, false, ['verify']);
    const s = Uint8Array.from(atob(p[2].replace(/-/g, '+').replace(/_/g, '/')), x => x.charCodeAt(0));
    if (!await crypto.subtle.verify('HMAC', k, s, new TextEncoder().encode(p[0] + '.' + p[1]))) throw new Error('Invalid');
    const pl = JSON.parse(atob(p[1]));
    if (pl.exp < Math.floor(Date.now() / 1000)) throw new Error('Expired');
    return pl;
  }

  async function auth() {
    const a = request.headers.get('Authorization');
    if (!a || !a.startsWith('Bearer ')) return null;
    try { const d = await vjwt(a.split(' ')[1], JWT_SECRET); return await db.prepare('SELECT * FROM users WHERE id = ?').bind(d.id).first(); } catch { return null; }
  }

  async function hash(pw) {
    const h = await crypto.subtle.digest('SHA-256', new TextEncoder().encode(pw + 'code-edu-salt'));
    return Array.from(new Uint8Array(h)).map(b => b.toString(16).padStart(2, '0')).join('');
  }

  function mu(u) {
    if (!u) return null;
    return { id: u.id, username: u.username, display_name: u.display_name || u.username, bio: u.bio || '', avatar_url: u.avatar_url || u.avatar_key || '', xp: u.xp || 0, level: u.level || 1, streak: u.streak || 0, role: u.role || 'user', banned: u.banned || u.is_banned || 0, last_active: u.last_active_date || u.last_active || '', created_at: u.created_at || '' };
  }

  try {
    if (path === 'health' && method === 'GET') return j({ status: 'healthy', timestamp: new Date().toISOString(), version: 'v1' });

    if (path === 'auth/register' && method === 'POST') {
      const bd = await request.json();
      if (!bd.username || !bd.email || !bd.password) return e('Missing fields');
      if (bd.password.length < 8) return e('Password too short');
      if (await db.prepare('SELECT id FROM users WHERE username = ? OR email = ?').bind(bd.username, bd.email).first()) return e('User exists', 409);
      const uid = crypto.randomUUID();
      await db.prepare('INSERT INTO users (id, username, email, password_hash, display_name) VALUES (?, ?, ?, ?, ?)').bind(uid, bd.username, bd.email, await hash(bd.password), bd.displayName || bd.username).run();
      const user = await db.prepare('SELECT * FROM users WHERE id = ?').bind(uid).first();
      if (!user) return e('Registration failed', 500);
      return j({ user: mu(user), accessToken: await jwt({ id: user.id, username: user.username, role: user.role }, JWT_SECRET, 900), refreshToken: await jwt({ id: user.id }, JWT_REFRESH_SECRET, 604800) }, 201);
    }

    if (path === 'auth/login' && method === 'POST') {
      const bd = await request.json();
      if (!bd.username || !bd.password) return e('Missing credentials');
      const user = await db.prepare('SELECT * FROM users WHERE username = ? OR email = ?').bind(bd.username, bd.username).first();
      if (!user) return e('Invalid credentials', 401);
      if (user.banned || user.is_banned) return e('Account banned', 403);
      if ((await hash(bd.password)) !== user.password_hash) return e('Invalid credentials', 401);
      await db.prepare("UPDATE users SET last_active_date = datetime('now') WHERE id = ?").bind(user.id).run();
      return j({ user: mu(user), accessToken: await jwt({ id: user.id, username: user.username, role: user.role }, JWT_SECRET, 900), refreshToken: await jwt({ id: user.id }, JWT_REFRESH_SECRET, 604800) });
    }

    if (path === 'auth/me' && method === 'GET') { const u = await auth(); if (!u) return e('Unauthorized', 401); return j({ user: mu(u) }); }

    if (path === 'auth/refresh' && method === 'POST') {
      try { const bd = await request.json(); if (!bd.refreshToken) return e('Missing', 401); const p = await vjwt(bd.refreshToken, JWT_REFRESH_SECRET); const u = await db.prepare('SELECT * FROM users WHERE id = ?').bind(p.id).first(); if (!u) return e('Invalid', 401); return j({ accessToken: await jwt({ id: u.id, username: u.username, role: u.role }, JWT_SECRET, 900), refreshToken: await jwt({ id: u.id }, JWT_REFRESH_SECRET, 604800) }); } catch { return e('Invalid', 401); }
    }

    if (path.match(/^lessons(\?.*)?$/) && method === 'GET') {
      const lang = url.searchParams.get('language') || 'python';
      const limit = Math.min(parseInt(url.searchParams.get('limit') || '100'), 100);
      const au = await auth().catch(() => null);
      const lessons = await db.prepare('SELECT l.id, l.language, l.level_number, l.title, l.difficulty, l.xp_reward, l.challenge_type, COALESCE(up.completed, 0) as completed, COALESCE(up.score, 0) as score FROM lessons l LEFT JOIN user_progress up ON l.id = up.lesson_id AND up.user_id = ? WHERE l.language = ? AND l.is_active = 1 ORDER BY l.level_number ASC LIMIT ?').bind(au ? au.id : 0, lang, limit).all();
      return j({ lessons: lessons.results, language: lang });
    }

    if (path.match(/^lessons\/\d+$/) && method === 'GET') {
      const lesson = await db.prepare('SELECT * FROM lessons WHERE id = ? AND is_active = 1').bind(parseInt(path.split('/')[1])).first();
      if (!lesson) return e('Not found', 404);
      return j({ lesson });
    }

    if (path.match(/^lessons\/\d+\/submit$/) && method === 'POST') {
      const u = await auth(); if (!u) return e('Unauthorized', 401);
      const lid = parseInt(path.split('/')[1]);
      const bd = await request.json();
      const lesson = await db.prepare('SELECT * FROM lessons WHERE id = ? AND is_active = 1').bind(lid).first();
      if (!lesson) return e('Not found', 404);
      let correct = false, score = 0;
      if (lesson.challenge_type === 'true_false' || lesson.challenge_type === 'multiple_choice') {
        correct = String(bd.answer).trim().toLowerCase() === String(lesson.correct_answer).trim().toLowerCase(); score = correct ? 100 : 0;
      } else {
        const uc = (bd.code || '').replace(/\s+/g, ''); const cc = (lesson.correct_answer || '').replace(/\s+/g, '');
        correct = uc === cc; score = correct ? 100 : Math.max(0, 100 - Math.abs(uc.length - cc.length) * 5);
      }
      const existing = await db.prepare('SELECT * FROM user_progress WHERE user_id = ? AND lesson_id = ?').bind(u.id, lid).first();
      if (existing) {
        await db.prepare('UPDATE user_progress SET completed = ?, attempts = attempts + 1, score = MAX(score, ?), completed_at = CASE WHEN ? = 1 THEN CURRENT_TIMESTAMP ELSE completed_at END WHERE id = ?').bind(correct ? 1 : 0, score, correct ? 1 : 0, existing.id).run();
      } else {
        await db.prepare('INSERT INTO user_progress (user_id, lesson_id, completed, attempts, score, completed_at) VALUES (?, ?, ?, 1, ?, CASE WHEN ? = 1 THEN CURRENT_TIMESTAMP ELSE NULL END)').bind(u.id, lid, correct ? 1 : 0, score, correct ? 1 : 0).run();
      }
      if (correct && (!existing || !existing.completed)) {
        const nx = (u.xp || 0) + lesson.xp_reward; await db.prepare('UPDATE users SET xp = ?, level = ? WHERE id = ?').bind(nx, Math.floor(Math.sqrt(nx / 100)) + 1, u.id).run();
      }
      const nextLesson = await db.prepare('SELECT id, level_number FROM lessons WHERE language = ? AND is_active = 1 AND level_number > ? ORDER BY level_number ASC LIMIT 1').bind(lesson.language, lesson.level_number).first();
      return j({ isCorrect: correct, score, xpEarned: correct ? lesson.xp_reward : 0, hint: !correct && lesson.hint ? lesson.hint : null, nextLessonId: correct && nextLesson ? nextLesson.id : null, nextLevel: correct && nextLesson ? nextLesson.level_number : null });
    }

    if (path === 'leaderboard' && method === 'GET') {
      const limit = Math.min(parseInt(url.searchParams.get('limit') || '50'), 100);
      const users = await db.prepare('SELECT id, username, display_name, avatar_url, xp, level, streak, role FROM users WHERE banned = 0 ORDER BY xp DESC LIMIT ?').bind(limit).all();
      return j({ users: users.results });
    }

    if (path === 'users/dashboard' && method === 'GET') {
      const u = await auth(); if (!u) return e('Unauthorized', 401);
      const lc = await db.prepare('SELECT COUNT(*) as c FROM user_progress WHERE user_id = ? AND completed = 1').bind(u.id).first();
      const rk = await db.prepare('SELECT COUNT(*) + 1 as r FROM users WHERE xp > ? AND banned = 0').bind(u.xp || 0).first();
      const nl = await db.prepare('SELECT l.* FROM lessons l WHERE l.is_active = 1 AND l.id NOT IN (SELECT lesson_id FROM user_progress WHERE user_id = ? AND completed = 1) ORDER BY l.level_number ASC LIMIT 1').bind(u.id).first();
      const ra = await db.prepare('SELECT * FROM achievements WHERE user_id = ? ORDER BY awarded_at DESC LIMIT 5').bind(u.id).all();
      return j({ user: mu(u), lessonsCompleted: lc.c, streak: u.streak || 0, rank: rk.r, nextLesson: nl, recentAchievements: ra.results });
    }

    if (path.match(/^users\/profile\/.+$/) && method === 'GET') {
      const username = path.split('/')[2];
      const u = await db.prepare('SELECT id, username, display_name, bio, avatar_url, xp, level, streak, role, created_at FROM users WHERE username = ?').bind(username).first();
      if (!u) return e('Not found', 404);
      u.lessonsCompleted = (await db.prepare('SELECT COUNT(*) as c FROM user_progress WHERE user_id = ? AND completed = 1').bind(u.id).first()).c;
      u.achievements = (await db.prepare('SELECT COUNT(*) as c FROM achievements WHERE user_id = ?').bind(u.id).first()).c;
      return j({ user: u });
    }

    if (path === 'users/profile' && method === 'PUT') {
      const u = await auth(); if (!u) return e('Unauthorized', 401);
      const bd = await request.json();
      await db.prepare('UPDATE users SET display_name = ?, bio = ? WHERE id = ?').bind(bd.displayName || '', bd.bio || '', u.id).run();
      return j({ user: mu(await db.prepare('SELECT * FROM users WHERE id = ?').bind(u.id).first()) });
    }

    if (path === 'search' && method === 'GET') {
      const q = url.searchParams.get('q'); if (!q || q.trim().length < 2) return e('Query too short');
      const t = '%' + q.trim() + '%';
      const r = { lessons: [], users: [] };
      r.lessons = (await db.prepare('SELECT id, title, language, difficulty, level_number FROM lessons WHERE is_active = 1 AND (title LIKE ? OR theory_text LIKE ?) LIMIT 10').bind(t, t).all()).results;
      r.users = (await db.prepare('SELECT id, username, display_name, avatar_url, xp, level, role FROM users WHERE banned = 0 AND (username LIKE ? OR display_name LIKE ?) LIMIT 10').bind(t, t).all()).results;
      return j({ results: r, query: q.trim() });
    }

    if (path === 'admin/stats' && method === 'GET') {
      const u = await auth(); if (!u || u.role !== 'admin') return e('Forbidden', 403);
      return j({ totalUsers: (await db.prepare('SELECT COUNT(*) as c FROM users').first()).c, totalLessons: (await db.prepare('SELECT COUNT(*) as c FROM lessons').first()).c, totalSubmissions: (await db.prepare('SELECT COUNT(*) as c FROM submissions').first()).c, totalAchievements: (await db.prepare('SELECT COUNT(*) as c FROM achievements').first()).c, activeToday: (await db.prepare("SELECT COUNT(*) as c FROM users WHERE last_active_date = datetime('now','start of day')").first()).c });
    }

    if (path === 'admin/users' && method === 'GET') {
      const u = await auth(); if (!u || u.role !== 'admin') return e('Forbidden', 403);
      return j({ users: (await db.prepare('SELECT id, username, email, display_name, xp, level, streak, banned, role, created_at FROM users ORDER BY created_at DESC LIMIT 50').all()).results });
    }

    if (path.match(/^admin\/users\/\d+\/ban$/) && method === 'PUT') {
      const u = await auth(); if (!u || u.role !== 'admin') return e('Forbidden', 403);
      const bd = await request.json(); await db.prepare('UPDATE users SET banned = ? WHERE id = ?').bind(bd.ban ? 1 : 0, parseInt(path.split('/')[3])).run();
      return j({ message: bd.ban ? 'Banned' : 'Unbanned' });
    }

    if (path === 'admin/lessons' && method === 'POST') {
      const u = await auth(); if (!u || u.role !== 'admin') return e('Forbidden', 403);
      const bd = await request.json();
      await db.prepare('INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 1)').bind(bd.language, bd.levelNumber, bd.title, bd.theoryText || '', bd.codeExample || '', bd.challengeType, bd.challengeDescription || '', bd.challengeTemplate || '', bd.correctAnswer, bd.hint || '', bd.xpReward || 50, bd.difficulty || 'easy').run();
      return j({ message: 'Created' }, 201);
    }

    if (path.match(/^admin\/users\/\d+\/progress$/) && method === 'DELETE') {
      const u = await auth(); if (!u || u.role !== 'admin') return e('Forbidden', 403);
      const uid = parseInt(path.split('/')[3]); await db.prepare('DELETE FROM user_progress WHERE user_id = ?').bind(uid).run(); await db.prepare('UPDATE users SET xp = 0, level = 1 WHERE id = ?').bind(uid).run();
      return j({ message: 'Reset' });
    }

    if (path === 'admin/storage' && method === 'GET') {
      const u = await auth(); if (!u || u.role !== 'admin') return e('Forbidden', 403);
      const files = await db.prepare('SELECT f.*, u.username FROM file_metadata f LEFT JOIN users u ON f.user_id = u.id ORDER BY f.created_at DESC LIMIT 100').all();
      const ts = await db.prepare('SELECT COALESCE(SUM(size), 0) as t FROM file_metadata').first();
      return j({ files: files.results, totalSize: ts.t });
    }

    if (path.match(/^challenges(\?.*)?$/) && method === 'GET') {
      const lang = url.searchParams.get('language') || 'python';
      return j({ challenges: (await db.prepare('SELECT id, title, description, difficulty, language, xp_reward, time_limit FROM challenges WHERE language = ? AND is_active = 1 ORDER BY difficulty ASC').bind(lang).all()).results });
    }

    if (path.match(/^challenges\/\d+$/) && method === 'GET') {
      const c = await db.prepare('SELECT * FROM challenges WHERE id = ? AND is_active = 1').bind(parseInt(path.split('/')[1])).first();
      if (!c) return e('Not found', 404); return j({ challenge: c });
    }

    if (path.match(/^challenges\/\d+\/submit$/) && method === 'POST') {
      const u = await auth(); if (!u) return e('Unauthorized', 401);
      const cid = parseInt(path.split('/')[1]); const bd = await request.json();
      const c = await db.prepare('SELECT * FROM challenges WHERE id = ? AND is_active = 1').bind(cid).first();
      if (!c) return e('Not found', 404);
      const correct = (bd.code || '').replace(/\s+/g, '') === (c.solution || '').replace(/\s+/g, '');
      await db.prepare('INSERT INTO submissions (user_id, challenge_id, code, language, status, result, score, is_public) VALUES (?, ?, ?, ?, ?, ?, ?, ?)').bind(u.id, cid, bd.code || '', c.language, correct ? 'passed' : 'failed', correct ? 'All tests passed' : 'Tests failed', correct ? 100 : 0, bd.isPublic ? 1 : 0).run();
      if (correct) { const nx = (u.xp || 0) + c.xp_reward; await db.prepare('UPDATE users SET xp = ?, level = ? WHERE id = ?').bind(nx, Math.floor(Math.sqrt(nx / 100)) + 1, u.id).run(); }
      return j({ isCorrect: correct, score: correct ? 100 : 0, xpEarned: correct ? c.xp_reward : 0 });
    }

    if (path.match(/^submissions(\?.*)?$/) && method === 'GET') {
      const limit = Math.min(parseInt(url.searchParams.get('limit') || '20'), 50);
      return j({ submissions: (await db.prepare('SELECT s.id, s.code, s.language, s.score, s.status, s.created_at, l.title as lesson_title, c.title as challenge_title, u.username FROM submissions s LEFT JOIN lessons l ON s.lesson_id = l.id LEFT JOIN challenges c ON s.challenge_id = c.id LEFT JOIN users u ON s.user_id = u.id WHERE s.is_public = 1 ORDER BY s.created_at DESC LIMIT ?').bind(limit).all()).results });
    }

    if (path.match(/^submissions\/\d+$/) && method === 'GET') {
      const s = await db.prepare('SELECT s.*, u.username, u.display_name, u.avatar_url FROM submissions s LEFT JOIN users u ON s.user_id = u.id WHERE s.id = ?').bind(parseInt(path.split('/')[1])).first();
      if (!s) return e('Not found', 404);
      s.comments = (await db.prepare('SELECT c.*, u.username, u.avatar_url FROM comments c LEFT JOIN users u ON c.user_id = u.id WHERE c.submission_id = ? ORDER BY c.created_at DESC').bind(s.id).all()).results || [];
      return j({ submission: s });
    }

    if (path.match(/^submissions\/\d+\/comments$/) && method === 'POST') {
      const u = await auth(); if (!u) return e('Unauthorized', 401);
      const bd = await request.json(); if (!bd.content) return e('Content required');
      const r = await db.prepare('INSERT INTO comments (user_id, submission_id, content, rating) VALUES (?, ?, ?, ?)').bind(u.id, parseInt(path.split('/')[1]), bd.content, bd.rating || 0).run();
      return j({ comment: await db.prepare('SELECT c.*, u.username, u.avatar_url FROM comments c LEFT JOIN users u ON c.user_id = u.id WHERE c.id = ?').bind(r.meta.last_row_id).first() }, 201);
    }

    if (path.match(/^contests(\?.*)?$/) && method === 'GET') {
      return j({ contests: (await db.prepare('SELECT * FROM contests ORDER BY start_time DESC LIMIT 20').all()).results });
    }

    if (path.match(/^contests\/\d+$/) && method === 'GET') {
      const c = await db.prepare('SELECT * FROM contests WHERE id = ?').bind(parseInt(path.split('/')[1])).first();
      if (!c) return e('Not found', 404); return j({ contest: c });
    }

    if (path.match(/^contests\/\d+\/join$/) && method === 'POST') {
      const u = await auth(); if (!u) return e('Unauthorized', 401);
      const cid = parseInt(path.split('/')[1]);
      if (await db.prepare('SELECT * FROM contest_participants WHERE contest_id = ? AND user_id = ?').bind(cid, u.id).first()) return e('Already joined', 409);
      await db.prepare('INSERT INTO contest_participants (contest_id, user_id) VALUES (?, ?)').bind(cid, u.id).run();
      return j({ message: 'Joined' }, 201);
    }

    if (path === 'notifications' && method === 'GET') {
      const u = await auth(); if (!u) return e('Unauthorized', 401);
      return j({ notifications: (await db.prepare('SELECT * FROM notifications WHERE user_id = ? ORDER BY created_at DESC LIMIT 50').bind(u.id).all()).results, unread: (await db.prepare('SELECT COUNT(*) as c FROM notifications WHERE user_id = ? AND is_read = 0').bind(u.id).first()).c });
    }

    if (path.match(/^notifications\/read-all$/) && method === 'PUT') {
      const u = await auth(); if (!u) return e('Unauthorized', 401);
      await db.prepare('UPDATE notifications SET is_read = 1 WHERE user_id = ? AND is_read = 0').bind(u.id).run();
      return j({ message: 'All read' });
    }

    if (path === 'achievements' && method === 'GET') {
      const u = await auth(); if (!u) return e('Unauthorized', 401);
      return j({ earned: (await db.prepare('SELECT a.* FROM achievements a WHERE a.user_id = ? ORDER BY a.awarded_at DESC').bind(u.id).all()).results, available: (await db.prepare('SELECT * FROM badges ORDER BY xp_reward ASC').all()).results });
    }

    if (path === 'friends' && method === 'GET') {
      const u = await auth(); if (!u) return e('Unauthorized', 401);
      return j({ friends: (await db.prepare("SELECT f.id, f.status, f.created_at, u2.id as friend_id, u2.username, u2.display_name, u2.avatar_url, u2.xp, u2.level, u2.streak FROM friendships f LEFT JOIN users u2 ON (CASE WHEN f.requester_id = ? THEN f.receiver_id ELSE f.requester_id END) = u2.id WHERE (f.requester_id = ? OR f.receiver_id = ?) AND f.status = 'accepted'").bind(u.id, u.id, u.id).all()).results });
    }

    if (path === 'friends/requests' && method === 'GET') {
      const u = await auth(); if (!u) return e('Unauthorized', 401);
      return j({ requests: (await db.prepare("SELECT f.id, f.created_at, u2.id as requester_id, u2.username, u2.display_name, u2.avatar_url FROM friendships f LEFT JOIN users u2 ON f.requester_id = u2.id WHERE f.receiver_id = ? AND f.status = 'pending'").bind(u.id).all()).results });
    }

    if (path.match(/^friends\/request\/.+$/) && method === 'POST') {
      const u = await auth(); if (!u) return e('Unauthorized', 401);
      const tu = await db.prepare('SELECT id FROM users WHERE username = ?').bind(path.split('/')[2]).first();
      if (!tu) return e('Not found', 404); if (tu.id === u.id) return e('Cannot friend yourself');
      if (await db.prepare('SELECT * FROM friendships WHERE (requester_id = ? AND receiver_id = ?) OR (requester_id = ? AND receiver_id = ?)').bind(u.id, tu.id, tu.id, u.id).first()) return e('Already exists', 409);
      await db.prepare('INSERT INTO friendships (requester_id, receiver_id, status) VALUES (?, ?, ?)').bind(u.id, tu.id, 'pending').run();
      return j({ message: 'Sent' }, 201);
    }

    if (path.match(/^friends\/respond\/\d+$/) && method === 'POST') {
      const u = await auth(); if (!u) return e('Unauthorized', 401);
      const bd = await request.json(); const rid = parseInt(path.split('/')[2]);
      const fr = await db.prepare("SELECT * FROM friendships WHERE id = ? AND receiver_id = ? AND status = 'pending'").bind(rid, u.id).first();
      if (!fr) return e('Not found', 404);
      await db.prepare('UPDATE friendships SET status = ?, updated_at = CURRENT_TIMESTAMP WHERE id = ?').bind(bd.action === 'accept' ? 'accepted' : 'rejected', rid).run();
      return j({ message: 'Responded' });
    }

    if (path.match(/^friends\/\d+$/) && method === 'DELETE') {
      const u = await auth(); if (!u) return e('Unauthorized', 401);
      await db.prepare('DELETE FROM friendships WHERE (requester_id = ? AND receiver_id = ?) OR (requester_id = ? AND receiver_id = ?)').bind(u.id, parseInt(path.split('/')[1]), parseInt(path.split('/')[1]), u.id).run();
      return j({ message: 'Removed' });
    }

    if (path === 'messages' && method === 'GET') {
      const u = await auth(); if (!u) return e('Unauthorized', 401);
      return j({ messages: (await db.prepare('SELECT m.*, u2.username as sender_username FROM messages m LEFT JOIN users u2 ON m.sender_id = u2.id WHERE m.sender_id = ? OR m.receiver_id = ? ORDER BY m.created_at DESC LIMIT 50').bind(u.id, u.id).all()).results, unread: (await db.prepare('SELECT COUNT(*) as c FROM messages WHERE receiver_id = ? AND is_read = 0').bind(u.id).first()).c });
    }

    if (path.match(/^messages\/send$/) && method === 'POST') {
      const u = await auth(); if (!u) return e('Unauthorized', 401);
      const bd = await request.json(); if (!bd.receiverId || !bd.content) return e('Missing');
      const r = await db.prepare('INSERT INTO messages (sender_id, receiver_id, content, attachment_url, attachment_name) VALUES (?, ?, ?, ?, ?)').bind(u.id, bd.receiverId, bd.content, bd.attachmentUrl || '', bd.attachmentName || '').run();
      return j({ message: { id: r.meta.last_row_id } }, 201);
    }

    if (path.match(/^messages\/conversation\/\d+$/) && method === 'GET') {
      const u = await auth(); if (!u) return e('Unauthorized', 401);
      const oid = parseInt(path.split('/')[2]);
      const msgs = (await db.prepare('SELECT m.*, u2.username as sender_username FROM messages m LEFT JOIN users u2 ON m.sender_id = u2.id WHERE (m.sender_id = ? AND m.receiver_id = ?) OR (m.sender_id = ? AND m.receiver_id = ?) ORDER BY m.created_at ASC LIMIT 50').bind(u.id, oid, oid, u.id).all()).results;
      await db.prepare('UPDATE messages SET is_read = 1 WHERE sender_id = ? AND receiver_id = ? AND is_read = 0').bind(oid, u.id).run();
      return j({ messages: msgs });
    }

    if (path.match(/^snippets(\?.*)?$/) && method === 'GET') {
      const u = await auth(); if (!u) return e('Unauthorized', 401);
      return j({ snippets: (await db.prepare('SELECT s.*, u2.username FROM snippets s LEFT JOIN users u2 ON s.user_id = u2.id WHERE s.user_id = ? OR s.is_public = 1 ORDER BY s.created_at DESC LIMIT 50').bind(u.id).all()).results });
    }

    if (path === 'snippets' && method === 'POST') {
      const u = await auth(); if (!u) return e('Unauthorized', 401);
      const bd = await request.json(); if (!bd.title || !bd.language || !bd.code) return e('Missing');
      await db.prepare('INSERT INTO snippets (user_id, title, language, code, description, is_public) VALUES (?, ?, ?, ?, ?, ?)').bind(u.id, bd.title, bd.language, bd.code, bd.description || '', bd.isPublic ? 1 : 0).run();
      return j({ message: 'Saved' }, 201);
    }

    if (path.match(/^snippets\/\d+$/) && method === 'DELETE') {
      const u = await auth(); if (!u) return e('Unauthorized', 401);
      await db.prepare('DELETE FROM snippets WHERE id = ? AND user_id = ?').bind(parseInt(path.split('/')[1]), u.id).run();
      return j({ message: 'Deleted' });
    }

    if (path === 'upload/avatar' && method === 'POST') {
      const u = await auth(); if (!u) return e('Unauthorized', 401);
      if (!env.R2_STORAGE) return e('Storage unavailable', 503);
      const fd = await request.formData(); const file = fd.get('file');
      if (!file) return e('No file', 400);
      const key = 'avatars/' + crypto.randomUUID() + '.webp';
      await env.R2_STORAGE.put(key, await file.arrayBuffer(), { httpMetadata: { contentType: file.type } });
      await db.prepare('UPDATE users SET avatar_url = ? WHERE id = ?').bind(key, u.id).run();
      return j({ avatarUrl: key });
    }

    if (path === 'upload/avatar' && method === 'DELETE') {
      const u = await auth(); if (!u) return e('Unauthorized', 401);
      await db.prepare("UPDATE users SET avatar_url = '' WHERE id = ?").bind(u.id).run();
      return j({ message: 'Deleted' });
    }

    return e('Not found', 404);
  } catch (err) {
    return e(err.message, 500);
  }
}