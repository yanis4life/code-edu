const express = require('express');
const router = express.Router();

router.get('/', (req, res) => {
  res.json({
    status: 'healthy',
    timestamp: new Date().toISOString(),
    version: process.env.API_VERSION || 'v1',
    environment: process.env.NODE_ENV || 'development',
    db: req.db ? 'connected' : 'unavailable',
    r2: req.r2 ? 'connected' : 'unavailable',
    queue: req.queue ? 'connected' : 'unavailable'
  });
});

router.get('/ping', (req, res) => {
  res.json({ pong: true, timestamp: Date.now() });
});

module.exports = router;