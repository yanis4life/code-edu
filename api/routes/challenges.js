const express = require('express');
const router = express.Router();
const { authenticate } = require('../middleware/auth');
const helpers = require('../utils/helpers');

router.get('/', async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  const language = req.query.language || 'python';
  const difficulty = req.query.difficulty || '';

  try {
    let query = 'SELECT c.id, c.title, c.description, c.difficulty, c.language, c.xp_reward, c.time_limit FROM challenges c WHERE c.language = ? AND c.is_active = 1';
    const params = [language];

    if (difficulty) {
      query += ' AND c.difficulty = ?';
      params.push(difficulty);
    }

    query += ' ORDER BY c.difficulty ASC, c.id ASC';

    const challenges = await db.prepare(query).bind(...params).all();
    res.json({ challenges: challenges.results });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to get challenges', status: 500 });
  }
});

router.get('/:id', async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  try {
    const challenge = await db.prepare('SELECT * FROM challenges WHERE id = ? AND is_active = 1').bind(req.params.id).first();
    if (!challenge) {
      return res.status(404).json({ error: 'Challenge not found', status: 404 });
    }

    res.json({ challenge });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to get challenge', status: 500 });
  }
});

router.post('/:id/submit', authenticate, async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  const { code, isPublic } = req.body;

  try {
    const challenge = await db.prepare('SELECT * FROM challenges WHERE id = ? AND is_active = 1').bind(req.params.id).first();
    if (!challenge) {
      return res.status(404).json({ error: 'Challenge not found', status: 404 });
    }

    const testCases = JSON.parse(challenge.test_cases || '[]');
    const userCode = (code || '').replace(/\s+/g, '');
    const solution = (challenge.solution || '').replace(/\s+/g, '');

    const isCorrect = userCode === solution;
    const score = isCorrect ? 100 : Math.max(0, Math.min(100, Math.round((1 - Math.abs(userCode.length - solution.length) / Math.max(solution.length, 1)) * 100)));

    await db.prepare(
      'INSERT INTO submissions (user_id, challenge_id, code, language, status, result, score, is_public) VALUES (?, ?, ?, ?, ?, ?, ?, ?)'
    ).bind(req.user.id, parseInt(req.params.id), code || '', challenge.language, isCorrect ? 'passed' : 'failed', isCorrect ? 'All tests passed' : 'Tests failed', score, isPublic ? 1 : 0).run();

    if (isCorrect) {
      const user = await db.prepare('SELECT * FROM users WHERE id = ?').bind(req.user.id).first();
      const newXp = user.xp + challenge.xp_reward;
      const newLevel = helpers.calculateLevel(newXp);
      await db.prepare('UPDATE users SET xp = ?, level = ?, updated_at = CURRENT_TIMESTAMP WHERE id = ?')
        .bind(newXp, newLevel, req.user.id).run();

      if (req.queue) {
        await req.queue.send({
          type: 'challenge_completed',
          userId: req.user.id,
          challengeId: parseInt(req.params.id),
          xpEarned: challenge.xp_reward
        });
      }
    }

    res.json({
      isCorrect,
      score,
      xpEarned: isCorrect ? challenge.xp_reward : 0,
      testResults: testCases.map((tc, i) => ({
        test: i + 1,
        passed: isCorrect
      }))
    });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to submit challenge', status: 500 });
  }
});

module.exports = router;