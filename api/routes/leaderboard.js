const express = require('express');
const router = express.Router();

router.get('/', async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  const type = req.query.type || 'global';
  const limit = Math.min(parseInt(req.query.limit) || 50, 100);

  try {
    if (type === 'global') {
      const users = await db.prepare(
        'SELECT id, username, display_name, avatar_url, xp, level, streak FROM users WHERE is_banned = 0 ORDER BY xp DESC LIMIT ?'
      ).bind(limit).all();

      const ranked = users.results.map((u, i) => ({ ...u, rank: i + 1 }));
      res.json({ leaderboard: ranked });
    } else if (type === 'friends' && req.user) {
      const users = await db.prepare(
        'SELECT u.id, u.username, u.display_name, u.avatar_url, u.xp, u.level, u.streak FROM users u INNER JOIN friendships f ON (f.requester_id = u.id OR f.receiver_id = u.id) AND f.status = \'accepted\' WHERE (f.requester_id = ? OR f.receiver_id = ?) AND u.id != ? ORDER BY u.xp DESC'
      ).bind(req.user.id, req.user.id, req.user.id).all();

      const ranked = users.results.map((u, i) => ({ ...u, rank: i + 1 }));
      res.json({ leaderboard: ranked });
    } else {
      res.json({ leaderboard: [] });
    }
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to get leaderboard', status: 500 });
  }
});

module.exports = router;