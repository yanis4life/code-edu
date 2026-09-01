const express = require('express');
const helmet = require('helmet');
const cors = require('cors');
const cookieParser = require('cookie-parser');
const pino = require('pino');

const authRoutes = require('./routes/auth');
const userRoutes = require('./routes/users');
const lessonRoutes = require('./routes/lessons');
const challengeRoutes = require('./routes/challenges');
const submissionRoutes = require('./routes/submissions');
const friendRoutes = require('./routes/friends');
const messageRoutes = require('./routes/messages');
const achievementRoutes = require('./routes/achievements');
const leaderboardRoutes = require('./routes/leaderboard');
const contestRoutes = require('./routes/contests');
const notificationRoutes = require('./routes/notifications');
const adminRoutes = require('./routes/admin');
const snippetRoutes = require('./routes/snippets');
const searchRoutes = require('./routes/search');
const uploadRoutes = require('./routes/upload');
const healthRoutes = require('./routes/health');

const errorHandler = require('./middleware/errorHandler');
const rateLimiter = require('./middleware/rateLimiter');

const logger = pino({
  level: process.env.NODE_ENV === 'production' ? 'info' : 'debug',
  transport: process.env.NODE_ENV !== 'production' ? { target: 'pino-pretty' } : undefined
});

const app = express();

app.use(helmet({
  contentSecurityPolicy: false,
  crossOriginEmbedderPolicy: false
}));

app.use(cors({
  origin: process.env.FRONTEND_URL || 'http://localhost:8788',
  credentials: true,
  methods: ['GET', 'POST', 'PUT', 'DELETE', 'PATCH'],
  allowedHeaders: ['Content-Type', 'Authorization']
}));

app.use(express.json({ limit: '10mb' }));
app.use(express.urlencoded({ extended: true, limit: '10mb' }));
app.use(cookieParser());

app.use((req, res, next) => {
  req.logger = logger;
  req.db = req.env && req.env.DB ? req.env.DB : null;
  req.r2 = req.env && req.env.R2_STORAGE ? req.env.R2_STORAGE : null;
  req.queue = req.env && req.env.QUEUE ? req.env.QUEUE : null;
  next();
});

app.use('/api/v1/health', healthRoutes);
app.use('/api/v1/auth', rateLimiter.auth, authRoutes);
app.use('/api/v1/users', rateLimiter.read, userRoutes);
app.use('/api/v1/lessons', rateLimiter.read, lessonRoutes);
app.use('/api/v1/challenges', rateLimiter.read, challengeRoutes);
app.use('/api/v1/submissions', rateLimiter.read, submissionRoutes);
app.use('/api/v1/friends', rateLimiter.read, friendRoutes);
app.use('/api/v1/messages', rateLimiter.read, messageRoutes);
app.use('/api/v1/achievements', rateLimiter.read, achievementRoutes);
app.use('/api/v1/leaderboard', rateLimiter.read, leaderboardRoutes);
app.use('/api/v1/contests', rateLimiter.read, contestRoutes);
app.use('/api/v1/notifications', rateLimiter.read, notificationRoutes);
app.use('/api/v1/admin', rateLimiter.auth, adminRoutes);
app.use('/api/v1/snippets', rateLimiter.read, snippetRoutes);
app.use('/api/v1/search', rateLimiter.read, searchRoutes);
app.use('/api/v1/upload', rateLimiter.auth, uploadRoutes);

app.use(errorHandler);

app.get('*', (req, res) => {
  res.status(404).json({ error: 'Not found', status: 404 });
});

module.exports = app;

if (require.main === module) {
  const port = process.env.PORT || 8788;
  app.listen(port, () => {
    logger.info(`Server running on port ${port}`);
  });
}