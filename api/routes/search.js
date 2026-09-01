const express = require('express');
const router = express.Router();
const { authenticate } = require('../middleware/auth');

router.get('/', async (req, res) => {
  const db = req.db;
  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  const { q, type } = req.query;

  if (!q || q.trim().length === 0) {
    return res.status(400).json({ error: 'Search query required', status: 400 });
  }

  const searchTerm = `%${q.trim()}%`;
  const results = { lessons: [], challenges: [], users: [], snippets: [] };

  try {
    if (!type || type === 'lessons') {
      const lessons = await db.prepare(
        'SELECT id, title, language, difficulty, level_number FROM lessons WHERE is_active = 1 AND (title LIKE ? OR theory_text LIKE ?) LIMIT 20'
      ).bind(searchTerm, searchTerm).all();
      results.lessons = lessons.results;
    }

    if (!type || type === 'challenges') {
      const challenges = await db.prepare(
        'SELECT id, title, difficulty, language FROM challenges WHERE is_active = 1 AND (title LIKE ? OR description LIKE ?) LIMIT 20'
      ).bind(searchTerm, searchTerm).all();
      results.challenges = challenges.results;
    }

    if (!type || type === 'users') {
      const users = await db.prepare(
        'SELECT id, username, display_name, avatar_url, xp, level FROM users WHERE is_banned = 0 AND (username LIKE ? OR display_name LIKE ?) LIMIT 20'
      ).bind(searchTerm, searchTerm).all();
      results.users = users.results;
    }

    if (!type || type === 'snippets') {
      const snippets = await db.prepare(
        'SELECT s.id, s.title, s.language, s.description, u.username FROM snippets s LEFT JOIN users u ON s.user_id = u.id WHERE s.is_public = 1 AND (s.title LIKE ? OR s.description LIKE ?) LIMIT 20'
      ).bind(searchTerm, searchTerm).all();
      results.snippets = snippets.results;
    }

    res.json({ results, query: q.trim() });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Search failed', status: 500 });
  }
});

module.exports = router;