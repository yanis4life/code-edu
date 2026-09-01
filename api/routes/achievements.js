const express = require('express');
const router = express.Router();
const { authenticate } = require('../middleware/auth');

router.get('/', authenticate, async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  try {
    const achievements = await db.prepare(
      'SELECT a.* FROM achievements a WHERE a.user_id = ? ORDER BY a.awarded_at DESC'
    ).bind(req.user.id).all();

    const allBadges = await db.prepare('SELECT * FROM badges ORDER BY xp_reward ASC').all();

    res.json({
      earned: achievements.results,
      available: allBadges.results
    });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to get achievements', status: 500 });
  }
});

router.get('/all', async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  const userId = req.query.userId || (req.user ? req.user.id : 0);

  try {
    const achievements = await db.prepare(
      'SELECT a.*, b.name, b.description, b.icon_url, b.xp_reward FROM achievements a LEFT JOIN badges b ON a.badge_key = b.key WHERE a.user_id = ? ORDER BY a.awarded_at DESC'
    ).bind(userId).all();

    res.json({ achievements: achievements.results });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to get achievements', status: 500 });
  }
});

module.exports = router;