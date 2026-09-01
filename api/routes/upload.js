const express = require('express');
const router = express.Router();
const { authenticate } = require('../middleware/auth');
const storage = require('../utils/storage');
const helpers = require('../utils/helpers');

router.post('/avatar', authenticate, async (req, res) => {
  const db = req.db;
  const r2 = req.r2;

  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });
  if (!r2) return res.status(503).json({ error: 'Storage not available', status: 503 });

  const file = req.file || req.body.file;

  if (!file) {
    return res.status(400).json({ error: 'No file provided', status: 400 });
  }

  const fileBuffer = Buffer.isBuffer(file) ? file : Buffer.from(file.content || '', 'base64');
  const mimeType = file.mimetype || file.type || 'image/png';
  const originalName = file.originalname || file.name || 'avatar.png';

  const errors = storage.validateFileUpload({ mimetype: mimeType, size: fileBuffer.length }, 'avatar');
  if (errors.length > 0) {
    return res.status(400).json({ error: errors.join(', '), status: 400 });
  }

  try {
    const key = storage.generateFileKey(req.user.id, originalName, 'avatars');

    const uploadResult = await storage.uploadToR2(r2, process.env.R2_BUCKET_NAME, key, fileBuffer, mimeType);
    if (!uploadResult.success) {
      return res.status(500).json({ error: 'Upload failed', status: 500 });
    }

    const currentUser = await db.prepare('SELECT avatar_url FROM users WHERE id = ?').bind(req.user.id).first();
    if (currentUser && currentUser.avatar_url) {
      const oldKey = currentUser.avatar_url.replace(`${process.env.R2_PUBLIC_URL || ''}/`, '');
      if (oldKey) {
        await storage.deleteFromR2(r2, process.env.R2_BUCKET_NAME, oldKey).catch(() => {});
      }
    }

    const publicUrl = `${process.env.R2_PUBLIC_URL || ''}/${key}`;
    await db.prepare('UPDATE users SET avatar_url = ?, updated_at = CURRENT_TIMESTAMP WHERE id = ?')
      .bind(publicUrl, req.user.id).run();

    await db.prepare(
      'INSERT INTO file_metadata (user_id, filename, original_name, mime_type, size, bucket, key, is_public) VALUES (?, ?, ?, ?, ?, ?, ?, 1)'
    ).bind(req.user.id, key, originalName, mimeType, fileBuffer.length, process.env.R2_BUCKET_NAME, key).run();

    res.json({ avatarUrl: publicUrl, message: 'Avatar uploaded' });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to upload avatar', status: 500 });
  }
});

router.delete('/avatar', authenticate, async (req, res) => {
  const db = req.db;
  const r2 = req.r2;

  if (!db) return res.status(503).json({ error: 'Database not available', status: 503 });

  try {
    const user = await db.prepare('SELECT avatar_url FROM users WHERE id = ?').bind(req.user.id).first();
    if (user && user.avatar_url && r2) {
      const key = user.avatar_url.replace(`${process.env.R2_PUBLIC_URL || ''}/`, '');
      await storage.deleteFromR2(r2, process.env.R2_BUCKET_NAME, key).catch(() => {});
    }

    await db.prepare('UPDATE users SET avatar_url = \'\', updated_at = CURRENT_TIMESTAMP WHERE id = ?')
      .bind(req.user.id).run();

    res.json({ message: 'Avatar deleted' });
  } catch (err) {
    req.logger.error(err);
    res.status(500).json({ error: 'Failed to delete avatar', status: 500 });
  }
});

module.exports = router;