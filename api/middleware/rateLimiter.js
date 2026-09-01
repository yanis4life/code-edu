function rateLimiter(config) {
  const store = {};

  return function(req, res, next) {
    const key = req.headers['cf-connecting-ip'] || req.ip || 'unknown';
    const now = Date.now();
    const windowMs = config.windowMs || 60000;
    const max = config.max || 100;

    if (!store[key]) {
      store[key] = [];
    }

    store[key] = store[key].filter(time => time > now - windowMs);

    if (store[key].length >= max) {
      return res.status(429).json({
        error: 'Too many requests, please try again later',
        status: 429,
        retryAfter: Math.ceil(windowMs / 1000)
      });
    }

    store[key].push(now);
    next();
  };
}

module.exports = {
  auth: rateLimiter({ max: parseInt(process.env.RATE_LIMIT_AUTH || '100'), windowMs: 60000 }),
  read: rateLimiter({ max: parseInt(process.env.RATE_LIMIT_READ || '1000'), windowMs: 60000 }),
  upload: rateLimiter({ max: 20, windowMs: 60000 })
};