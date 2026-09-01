const express = require('express');
const router = express.Router();
const { authenticate } = require('../middleware/auth');

router.get('/', async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  try {
    const contests = await db.prepare(
      'SELECT * FROM contests ORDER BY start_time DESC LIMIT 20'
    ).all();

    res.json({ contests: contests.results });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to get contests', status: 500 });
  }
});

router.get('/:id', async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  try {
    const contest = await db.prepare('SELECT * FROM contests WHERE id = ?').bind(req.params.id).first();
    if (!contest) {
      return res.status(404).json({ error: 'Contest not found', status: 404 });
    }

    const participants = await db.prepare(
      'SELECT cp.*, u.username, u.display_name, u.avatar_url FROM contest_participants cp LEFT JOIN users u ON cp.user_id = u.id WHERE cp.contest_id = ? ORDER BY cp.score DESC, cp.completed_at ASC'
    ).bind(contest.id).all();

    contest.participants = participants.results;

    res.json({ contest });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to get contest', status: 500 });
  }
});

router.post('/:id/join', authenticate, async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  try {
    const contest = await db.prepare('SELECT * FROM contests WHERE id = ?').bind(req.params.id).first();
    if (!contest) {
      return res.status(404).json({ error: 'Contest not found', status: 404 });
    }

    const existing = await db.prepare(
      'SELECT * FROM contest_participants WHERE contest_id = ? AND user_id = ?'
    ).bind(contest.id, req.user.id).first();

    if (existing) {
      return res.status(409).json({ error: 'Already joined', status: 409 });
    }

    await db.prepare('INSERT INTO contest_participants (contest_id, user_id) VALUES (?, ?)')
      .bind(contest.id, req.user.id).run();

    res.status(201).json({ message: 'Joined contest successfully' });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to join contest', status: 500 });
  }
});

module.exports = router;