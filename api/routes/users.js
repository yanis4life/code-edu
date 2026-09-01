const express = require('express');
const router = express.Router();
const { authenticate, optionalAuth, adminOnly } = require('../middleware/auth');
const helpers = require('../utils/helpers');

router.get('/profile/:username', optionalAuth, async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  try {
    const user = await db.prepare(
      'SELECT id, username, display_name, bio, avatar_url, xp, level, streak, role, created_at FROM users WHERE username = ?'
    ).bind(req.params.username).first();

    if (!user) {
      return res.status(404).json({ error: 'User not found', status: 404 });
    }

    const lessonCount = await db.prepare(
      'SELECT COUNT(*) as count FROM user_progress WHERE user_id = ? AND completed = 1'
    ).bind(user.id).first();

    const achievementCount = await db.prepare(
      'SELECT COUNT(*) as count FROM achievements WHERE user_id = ?'
    ).bind(user.id).first();

    const publicSubmissions = await db.prepare(
      'SELECT s.id, s.code, s.language, s.score, s.created_at, l.title as lesson_title FROM submissions s LEFT JOIN lessons l ON s.lesson_id = l.id WHERE s.user_id = ? AND s.is_public = 1 ORDER BY s.created_at DESC LIMIT 10'
    ).bind(user.id).all();

    user.lessonsCompleted = lessonCount.count;
    user.achievements = achievementCount.count;
    user.publicSubmissions = publicSubmissions.results || [];

    res.json({ user });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to get profile', status: 500 });
  }
});

router.put('/profile', authenticate, async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  const { displayName, bio } = req.body;

  try {
    await db.prepare('UPDATE users SET display_name = ?, bio = ?, updated_at = CURRENT_TIMESTAMP WHERE id = ?')
      .bind(displayName || '', bio || '', req.user.id).run();

    const user = await db.prepare('SELECT * FROM users WHERE id = ?').bind(req.user.id).first();
    res.json({ user: helpers.sanitizeUser(user) });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to update profile', status: 500 });
  }
});

router.get('/leaderboard', async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  const limit = Math.min(parseInt(req.query.limit) || 50, 100);
  const offset = parseInt(req.query.offset) || 0;

  try {
    const users = await db.prepare(
      'SELECT id, username, display_name, avatar_url, xp, level, streak FROM users WHERE is_banned = 0 ORDER BY xp DESC LIMIT ? OFFSET ?'
    ).bind(limit, offset).all();

    const total = await db.prepare('SELECT COUNT(*) as count FROM users WHERE is_banned = 0').first();

    res.json({ users: users.results, total: total.count });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to get leaderboard', status: 500 });
  }
});

router.get('/dashboard', authenticate, async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  try {
    const user = await db.prepare('SELECT * FROM users WHERE id = ?').bind(req.user.id).first();
    if (!user) return res.status(404).json({ error: 'User not found', status: 404 });

    const lessonCount = await db.prepare(
      'SELECT COUNT(*) as count FROM user_progress WHERE user_id = ? AND completed = 1'
    ).bind(user.id).first();

    const streak = user.streak || 0;

    const rank = await db.prepare(
      'SELECT COUNT(*) + 1 as rank FROM users WHERE xp > ? AND is_banned = 0'
    ).bind(user.xp).first();

    const nextLesson = await db.prepare(
      'SELECT l.* FROM lessons l WHERE l.is_active = 1 AND l.id NOT IN (SELECT lesson_id FROM user_progress WHERE user_id = ? AND completed = 1) ORDER BY l.level_number ASC LIMIT 1'
    ).bind(user.id).first();

    const recentAchievements = await db.prepare(
      'SELECT * FROM achievements WHERE user_id = ? ORDER BY awarded_at DESC LIMIT 5'
    ).bind(user.id).all();

    res.json({
      user: helpers.sanitizeUser(user),
      lessonsCompleted: lessonCount.count,
      streak,
      rank: rank.rank,
      nextLesson,
      recentAchievements: recentAchievements.results
    });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to get dashboard', status: 500 });
  }
});

module.exports = router;