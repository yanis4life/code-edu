const express = require('express');
const router = express.Router();
const { authenticate, adminOnly } = require('../middleware/auth');

router.use(authenticate, adminOnly);

router.get('/users', async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  const limit = Math.min(parseInt(req.query.limit) || 50, 100);
  const offset = parseInt(req.query.offset) || 0;

  try {
    const users = await db.prepare(
      'SELECT id, username, email, display_name, xp, level, streak, is_banned, role, created_at FROM users ORDER BY created_at DESC LIMIT ? OFFSET ?'
    ).bind(limit, offset).all();

    const total = await db.prepare('SELECT COUNT(*) as count FROM users').first();

    res.json({ users: users.results, total: total.count });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to get users', status: 500 });
  }
});

router.put('/users/:id/ban', async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  const { ban } = req.body;

  try {
    await db.prepare('UPDATE users SET is_banned = ?, updated_at = CURRENT_TIMESTAMP WHERE id = ?')
      .bind(ban ? 1 : 0, req.params.id).run();

    res.json({ message: ban ? 'User banned' : 'User unbanned' });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to update user', status: 500 });
  }
});

router.delete('/users/:id/progress', async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  try {
    await db.prepare('DELETE FROM user_progress WHERE user_id = ?').bind(req.params.id).run();
    await db.prepare('UPDATE users SET xp = 0, level = 1, updated_at = CURRENT_TIMESTAMP WHERE id = ?').bind(req.params.id).run();

    res.json({ message: 'Progress reset' });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to reset progress', status: 500 });
  }
});

router.post('/lessons', async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  const { language, levelNumber, title, theoryText, codeExample, challengeType, challengeDescription, challengeTemplate, correctAnswer, hint, xpReward, difficulty } = req.body;

  if (!language || !levelNumber || !title || !challengeType || !correctAnswer) {
    return res.status(400).json({ error: 'Missing required fields', status: 400 });
  }

  try {
    const result = await db.prepare(
      'INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)'
    ).bind(language, levelNumber, title, theoryText || '', codeExample || '', challengeType, challengeDescription || '', challengeTemplate || '', correctAnswer, hint || '', xpReward || 50, difficulty || 'easy').run();

    res.status(201).json({ id: result.meta.last_row_id, message: 'Lesson created' });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to create lesson', status: 500 });
  }
});

router.put('/lessons/:id', async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  const { title, theoryText, codeExample, challengeType, challengeDescription, challengeTemplate, correctAnswer, hint, xpReward, difficulty, isActive } = req.body;

  try {
    const updates = [];
    const params = [];

    if (title !== undefined) { updates.push('title = ?'); params.push(title); }
    if (theoryText !== undefined) { updates.push('theory_text = ?'); params.push(theoryText); }
    if (codeExample !== undefined) { updates.push('code_example = ?'); params.push(codeExample); }
    if (challengeType !== undefined) { updates.push('challenge_type = ?'); params.push(challengeType); }
    if (challengeDescription !== undefined) { updates.push('challenge_description = ?'); params.push(challengeDescription); }
    if (challengeTemplate !== undefined) { updates.push('challenge_template = ?'); params.push(challengeTemplate); }
    if (correctAnswer !== undefined) { updates.push('correct_answer = ?'); params.push(correctAnswer); }
    if (hint !== undefined) { updates.push('hint = ?'); params.push(hint); }
    if (xpReward !== undefined) { updates.push('xp_reward = ?'); params.push(xpReward); }
    if (difficulty !== undefined) { updates.push('difficulty = ?'); params.push(difficulty); }
    if (isActive !== undefined) { updates.push('is_active = ?'); params.push(isActive); }

    if (updates.length === 0) {
      return res.status(400).json({ error: 'No fields to update', status: 400 });
    }

    params.push(req.params.id);
    await db.prepare(`UPDATE lessons SET ${updates.join(', ')} WHERE id = ?`).bind(...params).run();

    res.json({ message: 'Lesson updated' });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to update lesson', status: 500 });
  }
});

router.get('/storage', async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  try {
    const files = await db.prepare(
      'SELECT f.*, u.username FROM file_metadata f LEFT JOIN users u ON f.user_id = u.id ORDER BY f.created_at DESC LIMIT 100'
    ).all();

    const totalSize = await db.prepare('SELECT COALESCE(SUM(size), 0) as total FROM file_metadata').first();

    res.json({ files: files.results, totalSize: totalSize.total });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to get storage info', status: 500 });
  }
});

router.get('/stats', async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  try {
    const totalUsers = await db.prepare('SELECT COUNT(*) as count FROM users').first();
    const totalLessons = await db.prepare('SELECT COUNT(*) as count FROM lessons').first();
    const totalSubmissions = await db.prepare('SELECT COUNT(*) as count FROM submissions').first();
    const totalAchievements = await db.prepare('SELECT COUNT(*) as count FROM achievements').first();
    const activeToday = await db.prepare(
      "SELECT COUNT(*) as count FROM users WHERE last_active = CURRENT_DATE"
    ).first();

    res.json({
      totalUsers: totalUsers.count,
      totalLessons: totalLessons.count,
      totalSubmissions: totalSubmissions.count,
      totalAchievements: totalAchievements.count,
      activeToday: activeToday.count
    });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to get stats', status: 500 });
  }
});

module.exports = router;