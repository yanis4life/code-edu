const express = require('express');
const router = express.Router();
const { authenticate } = require('../middleware/auth');
const helpers = require('../utils/helpers');

router.get('/', async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  const language = req.query.language || 'python';
  const limit = Math.min(parseInt(req.query.limit) || 100, 100);

  try {
    const lessons = await db.prepare(
      'SELECT l.id, l.language, l.level_number, l.title, l.difficulty, l.xp_reward, l.challenge_type, COALESCE(up.completed, 0) as completed, COALESCE(up.score, 0) as score FROM lessons l LEFT JOIN user_progress up ON l.id = up.lesson_id AND up.user_id = ? WHERE l.language = ? AND l.is_active = 1 ORDER BY l.level_number ASC LIMIT ?'
    ).bind(req.user ? req.user.id : 0, language, limit).all();

    res.json({ lessons: lessons.results, language });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to get lessons', status: 500 });
  }
});

router.get('/:id', async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  try {
    const lesson = await db.prepare('SELECT * FROM lessons WHERE id = ? AND is_active = 1').bind(req.params.id).first();

    if (!lesson) {
      return res.status(404).json({ error: 'Lesson not found', status: 404 });
    }

    if (req.user) {
      const progress = await db.prepare(
        'SELECT * FROM user_progress WHERE user_id = ? AND lesson_id = ?'
      ).bind(req.user.id, lesson.id).first();
      lesson.userProgress = progress || null;
    }

    res.json({ lesson });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to get lesson', status: 500 });
  }
});

router.post('/:id/submit', authenticate, async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  const { code, answer } = req.body;
  const lessonId = req.params.id;

  try {
    const lesson = await db.prepare('SELECT * FROM lessons WHERE id = ? AND is_active = 1').bind(lessonId).first();
    if (!lesson) {
      return res.status(404).json({ error: 'Lesson not found', status: 404 });
    }

    let isCorrect = false;
    let score = 0;

    if (lesson.challenge_type === 'true_false' || lesson.challenge_type === 'multiple_choice') {
      isCorrect = String(answer).trim().toLowerCase() === String(lesson.correct_answer).trim().toLowerCase();
      score = isCorrect ? 100 : 0;
    } else if (lesson.challenge_type === 'fix_bug' || lesson.challenge_type === 'complete_code') {
      const userCode = (code || '').replace(/\s+/g, '');
      const correctCode = (lesson.correct_answer || '').replace(/\s+/g, '');
      isCorrect = userCode === correctCode;
      score = isCorrect ? 100 : Math.max(0, 100 - Math.abs(userCode.length - correctCode.length) * 5);
    } else {
      isCorrect = String(answer || code).trim().toLowerCase() === String(lesson.correct_answer).trim().toLowerCase();
      score = isCorrect ? 100 : 0;
    }

    const existing = await db.prepare(
      'SELECT * FROM user_progress WHERE user_id = ? AND lesson_id = ?'
    ).bind(req.user.id, lessonId).first();

    if (existing) {
      await db.prepare(
        'UPDATE user_progress SET completed = ?, attempts = attempts + 1, score = MAX(score, ?), completed_at = CASE WHEN ? = 1 THEN CURRENT_TIMESTAMP ELSE completed_at END WHERE id = ?'
      ).bind(isCorrect ? 1 : 0, score, isCorrect ? 1 : 0, existing.id).run();
    } else {
      await db.prepare(
        'INSERT INTO user_progress (user_id, lesson_id, completed, attempts, score, completed_at) VALUES (?, ?, ?, 1, ?, CASE WHEN ? = 1 THEN CURRENT_TIMESTAMP ELSE NULL END)'
      ).bind(req.user.id, lessonId, isCorrect ? 1 : 0, score, isCorrect ? 1 : 0).run();
    }

    if (isCorrect && (!existing || !existing.completed)) {
      const user = await db.prepare('SELECT * FROM users WHERE id = ?').bind(req.user.id).first();
      const newXp = user.xp + lesson.xp_reward;
      const newLevel = helpers.calculateLevel(newXp);
      await db.prepare('UPDATE users SET xp = ?, level = ?, updated_at = CURRENT_TIMESTAMP WHERE id = ?')
        .bind(newXp, newLevel, req.user.id).run();

      if (req.queue) {
        await req.queue.send({
          type: 'lesson_completed',
          userId: req.user.id,
          lessonId: parseInt(lessonId),
          xpEarned: lesson.xp_reward
        });
      }
    }

    res.json({
      isCorrect,
      score,
      xpEarned: isCorrect ? lesson.xp_reward : 0,
      hint: !isCorrect && lesson.hint ? lesson.hint : null
    });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to submit lesson', status: 500 });
  }
});

module.exports = router;