const express = require('express');
const router = express.Router();
const { authenticate } = require('../middleware/auth');

router.get('/', authenticate, async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  try {
    const friends = await db.prepare(
      'SELECT f.id, f.status, f.created_at, u.id as friend_id, u.username, u.display_name, u.avatar_url, u.xp, u.level, u.streak FROM friendships f LEFT JOIN users u ON (CASE WHEN f.requester_id = ? THEN f.receiver_id ELSE f.requester_id END) = u.id WHERE (f.requester_id = ? OR f.receiver_id = ?) AND f.status = \'accepted\''
    ).bind(req.user.id, req.user.id, req.user.id).all();

    res.json({ friends: friends.results });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to get friends', status: 500 });
  }
});

router.get('/requests', authenticate, async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  try {
    const requests = await db.prepare(
      'SELECT f.id, f.created_at, u.id as requester_id, u.username, u.display_name, u.avatar_url FROM friendships f LEFT JOIN users u ON f.requester_id = u.id WHERE f.receiver_id = ? AND f.status = \'pending\''
    ).bind(req.user.id).all();

    res.json({ requests: requests.results });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to get friend requests', status: 500 });
  }
});

router.post('/request/:username', authenticate, async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  try {
    const targetUser = await db.prepare('SELECT id FROM users WHERE username = ?').bind(req.params.username).first();
    if (!targetUser) {
      return res.status(404).json({ error: 'User not found', status: 404 });
    }

    if (targetUser.id === req.user.id) {
      return res.status(400).json({ error: 'Cannot friend yourself', status: 400 });
    }

    const existing = await db.prepare(
      'SELECT * FROM friendships WHERE (requester_id = ? AND receiver_id = ?) OR (requester_id = ? AND receiver_id = ?)'
    ).bind(req.user.id, targetUser.id, targetUser.id, req.user.id).first();

    if (existing) {
      return res.status(409).json({ error: 'Friend request already exists', status: 409 });
    }

    await db.prepare('INSERT INTO friendships (requester_id, receiver_id, status) VALUES (?, ?, \'pending\')')
      .bind(req.user.id, targetUser.id).run();

    if (req.queue) {
      await req.queue.send({
        type: 'friend_request',
        fromUserId: req.user.id,
        toUserId: targetUser.id
      });
    }

    res.status(201).json({ message: 'Friend request sent' });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to send friend request', status: 500 });
  }
});

router.post('/respond/:requestId', authenticate, async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  const { action } = req.body;

  if (!action || !['accept', 'reject'].includes(action)) {
    return res.status(400).json({ error: 'Action must be accept or reject', status: 400 });
  }

  try {
    const request = await db.prepare('SELECT * FROM friendships WHERE id = ? AND receiver_id = ? AND status = \'pending\'')
      .bind(req.params.requestId, req.user.id).first();

    if (!request) {
      return res.status(404).json({ error: 'Friend request not found', status: 404 });
    }

    const newStatus = action === 'accept' ? 'accepted' : 'rejected';
    await db.prepare('UPDATE friendships SET status = ?, updated_at = CURRENT_TIMESTAMP WHERE id = ?')
      .bind(newStatus, request.id).run();

    res.json({ message: `Friend request ${newStatus}` });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to respond to friend request', status: 500 });
  }
});

router.delete('/:friendId', authenticate, async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  try {
    await db.prepare(
      'DELETE FROM friendships WHERE (requester_id = ? AND receiver_id = ?) OR (requester_id = ? AND receiver_id = ?)'
    ).bind(req.user.id, parseInt(req.params.friendId), parseInt(req.params.friendId), req.user.id).run();

    res.json({ message: 'Friend removed' });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to remove friend', status: 500 });
  }
});

module.exports = router;