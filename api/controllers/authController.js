const helpers = require('../utils/helpers');

async function handleLogin(req, res) {
  const { username, password } = req.body;

  if (!username || !password) {
    return res.status(400).json({ error: 'Username and password required', status: 400 });
  }

  const db = req.db;
  if (!db) {
    return res.status(503).json({ error: 'Database not available', status: 503 });
  }

  try {
    const user = await db.prepare('SELECT * FROM users WHERE username = ? OR email = ?').bind(username, username).first();

    if (!user) {
      return res.status(401).json({ error: 'Invalid credentials', status: 401 });
    }

    if (user.is_banned) {
      return res.status(403).json({ error: 'Account banned', status: 403 });
    }

    const valid = await helpers.comparePassword(password, user.password_hash);
    if (!valid) {
      return res.status(401).json({ error: 'Invalid credentials', status: 401 });
    }

    const accessToken = helpers.generateAccessToken(user);
    const refreshToken = helpers.generateRefreshToken(user);

    const expiresAt = new Date(Date.now() + 7 * 24 * 60 * 60 * 1000).toISOString();
    await db.prepare('INSERT INTO refresh_tokens (user_id, token, expires_at) VALUES (?, ?, ?)')
      .bind(user.id, refreshToken, expiresAt).run();

    await db.prepare('UPDATE users SET last_active = CURRENT_DATE WHERE id = ?').bind(user.id).run();

    res.json({
      user: helpers.sanitizeUser(user),
      accessToken,
      refreshToken
    });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Login failed', status: 500 });
  }
}

async function handleRegister(req, res) {
  const { username, email, password, displayName } = req.body;

  if (!username || !email || !password) {
    return res.status(400).json({ error: 'Username, email, and password required', status: 400 });
  }

  if (!helpers.validateEmail(email)) {
    return res.status(400).json({ error: 'Invalid email format', status: 400 });
  }

  if (username.length < 3 || username.length > 30) {
    return res.status(400).json({ error: 'Username must be 3-30 characters', status: 400 });
  }

  if (password.length < 8) {
    return res.status(400).json({ error: 'Password must be at least 8 characters', status: 400 });
  }

  const db = req.db;
  if (!db) {
    return res.status(503).json({ error: 'Database not available', status: 503 });
  }

  try {
    const existing = await db.prepare('SELECT id FROM users WHERE username = ? OR email = ?').bind(username, email).first();
    if (existing) {
      return res.status(409).json({ error: 'Username or email already exists', status: 409 });
    }

    const passwordHash = await helpers.hashPassword(password);
    const result = await db.prepare(
      'INSERT INTO users (username, email, password_hash, display_name) VALUES (?, ?, ?, ?)'
    ).bind(username, email, passwordHash, displayName || username).run();

    const userId = result.meta.last_row_id;
    const user = await db.prepare('SELECT * FROM users WHERE id = ?').bind(userId).first();

    const accessToken = helpers.generateAccessToken(user);
    const refreshToken = helpers.generateRefreshToken(user);

    res.status(201).json({
      user: helpers.sanitizeUser(user),
      accessToken,
      refreshToken
    });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Registration failed', status: 500 });
  }
}

async function handleRefresh(req, res) {
  const { refreshToken } = req.body;

  if (!refreshToken) {
    return res.status(400).json({ error: 'Refresh token required', status: 400 });
  }

  const db = req.db;
  if (!db) {
    return res.status(503).json({ error: 'Database not available', status: 503 });
  }

  try {
    const stored = await db.prepare(
      'SELECT * FROM refresh_tokens WHERE token = ? AND expires_at > datetime(\'now\')'
    ).bind(refreshToken).first();

    if (!stored) {
      return res.status(401).json({ error: 'Invalid or expired refresh token', status: 401 });
    }

    const user = await db.prepare('SELECT * FROM users WHERE id = ?').bind(stored.user_id).first();
    if (!user || user.is_banned) {
      await db.prepare('DELETE FROM refresh_tokens WHERE token = ?').bind(refreshToken).run();
      return res.status(401).json({ error: 'User not found or banned', status: 401 });
    }

    const newAccessToken = helpers.generateAccessToken(user);
    const newRefreshToken = helpers.generateRefreshToken(user);

    await db.prepare('DELETE FROM refresh_tokens WHERE token = ?').bind(refreshToken).run();
    const expiresAt = new Date(Date.now() + 7 * 24 * 60 * 60 * 1000).toISOString();
    await db.prepare('INSERT INTO refresh_tokens (user_id, token, expires_at) VALUES (?, ?, ?)')
      .bind(user.id, newRefreshToken, expiresAt).run();

    res.json({
      accessToken: newAccessToken,
      refreshToken: newRefreshToken
    });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Token refresh failed', status: 500 });
  }
}

async function handleLogout(req, res) {
  const { refreshToken } = req.body;
  const db = req.db;

  if (db && refreshToken) {
    await db.prepare('DELETE FROM refresh_tokens WHERE token = ?').bind(refreshToken).run();
  }

  res.json({ message: 'Logged out successfully' });
}

async function handleMe(req, res) {
  const db = req.db;
  if (!db) {
    return res.status(503).json({ error: 'Database not available', status: 503 });
  }

  try {
    const user = await db.prepare('SELECT * FROM users WHERE id = ?').bind(req.user.id).first();
    if (!user) {
      return res.status(404).json({ error: 'User not found', status: 404 });
    }

    res.json({ user: helpers.sanitizeUser(user) });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to get user', status: 500 });
  }
}

module.exports = { handleLogin, handleRegister, handleRefresh, handleLogout, handleMe };