const express = require('express');
const router = express.Router();
const { authenticate } = require('../middleware/auth');

router.get('/', authenticate, async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  const limit = Math.min(parseInt(req.query.limit) || 50, 100);
  const offset = parseInt(req.query.offset) || 0;

  try {
    const messages = await db.prepare(
      'SELECT m.*, u.username as sender_username, u2.username as receiver_username FROM messages m LEFT JOIN users u ON m.sender_id = u.id LEFT JOIN users u2 ON m.receiver_id = u2.id WHERE m.sender_id = ? OR m.receiver_id = ? ORDER BY m.created_at DESC LIMIT ? OFFSET ?'
    ).bind(req.user.id, req.user.id, limit, offset).all();

    const unread = await db.prepare(
      'SELECT COUNT(*) as count FROM messages WHERE receiver_id = ? AND is_read = 0'
    ).bind(req.user.id).first();

    res.json({ messages: messages.results, unread: unread.count });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to get messages', status: 500 });
  }
});

router.get('/conversation/:userId', authenticate, async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  const limit = Math.min(parseInt(req.query.limit) || 50, 100);

  try {
    const messages = await db.prepare(
      'SELECT m.*, u.username as sender_username FROM messages m LEFT JOIN users u ON m.sender_id = u.id WHERE (m.sender_id = ? AND m.receiver_id = ?) OR (m.sender_id = ? AND m.receiver_id = ?) ORDER BY m.created_at DESC LIMIT ?'
    ).bind(req.user.id, parseInt(req.params.userId), parseInt(req.params.userId), req.user.id, limit).all();

    await db.prepare(
      'UPDATE messages SET is_read = 1 WHERE sender_id = ? AND receiver_id = ? AND is_read = 0'
    ).bind(parseInt(req.params.userId), req.user.id).run();

    res.json({ messages: messages.results.reverse() });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to get conversation', status: 500 });
  }
});

router.post('/send', authenticate, async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  const { receiverId, content, attachmentUrl, attachmentName } = req.body;

  if (!receiverId || !content) {
    return res.status(400).json({ error: 'Receiver ID and content required', status: 400 });
  }

  try {
    const result = await db.prepare(
      'INSERT INTO messages (sender_id, receiver_id, content, attachment_url, attachment_name) VALUES (?, ?, ?, ?, ?)'
    ).bind(req.user.id, receiverId, content, attachmentUrl || '', attachmentName || '').run();

    const message = await db.prepare('SELECT * FROM messages WHERE id = ?').bind(result.meta.last_row_id).first();

    if (req.queue) {
      await req.queue.send({
        type: 'new_message',
        fromUserId: req.user.id,
        toUserId: receiverId,
        messageId: message.id
      });
    }

    res.status(201).json({ message });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to send message', status: 500 });
  }
});

module.exports = router;