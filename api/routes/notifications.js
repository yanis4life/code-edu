const express = require('express');
const router = express.Router();
const { authenticate } = require('../middleware/auth');

router.get('/', authenticate, async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  const limit = Math.min(parseInt(req.query.limit) || 50, 100);

  try {
    const notifications = await db.prepare(
      'SELECT * FROM notifications WHERE user_id = ? ORDER BY created_at DESC LIMIT ?'
    ).bind(req.user.id, limit).all();

    const unread = await db.prepare(
      'SELECT COUNT(*) as count FROM notifications WHERE user_id = ? AND is_read = 0'
    ).bind(req.user.id).first();

    res.json({ notifications: notifications.results, unread: unread.count });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to get notifications', status: 500 });
  }
});

router.put('/:id/read', authenticate, async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  try {
    await db.prepare('UPDATE notifications SET is_read = 1 WHERE id = ? AND user_id = ?')
      .bind(req.params.id, req.user.id).run();

    res.json({ message: 'Notification marked as read' });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to update notification', status: 500 });
  }
});

router.put('/read-all', authenticate, async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  try {
    await db.prepare('UPDATE notifications SET is_read = 1 WHERE user_id = ? AND is_read = 0')
      .bind(req.user.id).run();

    res.json({ message: 'All notifications marked as read' });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to update notifications', status: 500 });
  }
});

module.exports = router;