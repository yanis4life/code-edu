const express = require('express');
const router = express.Router();
const { authenticate } = require('../middleware/auth');

router.get('/', authenticate, async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  const language = req.query.language || '';
  const limit = Math.min(parseInt(req.query.limit) || 20, 50);

  try {
    let query = 'SELECT s.id, s.code, s.language, s.score, s.status, s.created_at, l.title as lesson_title, c.title as challenge_title, u.username FROM submissions s LEFT JOIN lessons l ON s.lesson_id = l.id LEFT JOIN challenges c ON s.challenge_id = c.id LEFT JOIN users u ON s.user_id = u.id WHERE 1=1';
    const params = [];

    if (language) {
      query += ' AND s.language = ?';
      params.push(language);
    }

    if (req.user) {
      query += ' AND (s.is_public = 1 OR s.user_id = ?)';
      params.push(req.user.id);
    } else {
      query += ' AND s.is_public = 1';
    }

    query += ' ORDER BY s.created_at DESC LIMIT ?';
    params.push(limit);

    const submissions = await db.prepare(query).bind(...params).all();
    res.json({ submissions: submissions.results });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to get submissions', status: 500 });
  }
});

router.get('/:id', async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  try {
    const submission = await db.prepare(
      'SELECT s.*, u.username, u.display_name, u.avatar_url FROM submissions s LEFT JOIN users u ON s.user_id = u.id WHERE s.id = ?'
    ).bind(req.params.id).first();

    if (!submission) {
      return res.status(404).json({ error: 'Submission not found', status: 404 });
    }

    const comments = await db.prepare(
      'SELECT c.*, u.username, u.avatar_url FROM comments c LEFT JOIN users u ON c.user_id = u.id WHERE c.submission_id = ? ORDER BY c.created_at DESC'
    ).bind(submission.id).all();

    submission.comments = comments.results || [];

    res.json({ submission });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to get submission', status: 500 });
  }
});

router.post('/:id/comments', authenticate, async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  const { content, rating } = req.body;

  if (!content || content.trim().length === 0) {
    return res.status(400).json({ error: 'Comment content required', status: 400 });
  }

  try {
    const submission = await db.prepare('SELECT id FROM submissions WHERE id = ?').bind(req.params.id).first();
    if (!submission) {
      return res.status(404).json({ error: 'Submission not found', status: 404 });
    }

    const result = await db.prepare(
      'INSERT INTO comments (user_id, submission_id, content, rating) VALUES (?, ?, ?, ?)'
    ).bind(req.user.id, parseInt(req.params.id), content, rating || 0).run();

    const comment = await db.prepare(
      'SELECT c.*, u.username, u.avatar_url FROM comments c LEFT JOIN users u ON c.user_id = u.id WHERE c.id = ?'
    ).bind(result.meta.last_row_id).first();

    res.status(201).json({ comment });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to add comment', status: 500 });
  }
});

module.exports = router;