const express = require('express');
const router = express.Router();
const { authenticate } = require('../middleware/auth');

router.get('/', authenticate, async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  const limit = Math.min(parseInt(req.query.limit) || 50, 100);

  try {
    const snippets = await db.prepare(
      'SELECT s.*, u.username FROM snippets s LEFT JOIN users u ON s.user_id = u.id WHERE s.user_id = ? OR s.is_public = 1 ORDER BY s.created_at DESC LIMIT ?'
    ).bind(req.user.id, limit).all();

    res.json({ snippets: snippets.results });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to get snippets', status: 500 });
  }
});

router.post('/', authenticate, async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  const { title, language, code, description, isPublic } = req.body;

  if (!title || !language || !code) {
    return res.status(400).json({ error: 'Title, language, and code required', status: 400 });
  }

  try {
    const result = await db.prepare(
      'INSERT INTO snippets (user_id, title, language, code, description, is_public) VALUES (?, ?, ?, ?, ?, ?)'
    ).bind(req.user.id, title, language, code, description || '', isPublic ? 1 : 0).run();

    res.status(201).json({ id: result.meta.last_row_id, message: 'Snippet saved' });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to save snippet', status: 500 });
  }
});

router.delete('/:id', authenticate, async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  try {
    const snippet = await db.prepare('SELECT * FROM snippets WHERE id = ? AND user_id = ?')
      .bind(req.params.id, req.user.id).first();

    if (!snippet) {
      return res.status(404).json({ error: 'Snippet not found', status: 404 });
    }

    await db.prepare('DELETE FROM snippets WHERE id = ?').bind(snippet.id).run();
    res.json({ message: 'Snippet deleted' });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to delete snippet', status: 500 });
  }
});

module.exports = router;