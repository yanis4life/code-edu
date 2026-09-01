const jwt = require('jsonwebtoken');
const bcrypt = require('bcryptjs');
const { v4: uuidv4 } = require('uuid');

const JWT_SECRET = process.env.JWT_SECRET || 'dev-secret-change-in-production';
const JWT_REFRESH_SECRET = process.env.JWT_REFRESH_SECRET || 'dev-refresh-secret';
const ACCESS_EXPIRY = process.env.JWT_ACCESS_EXPIRY || '15m';
const REFRESH_EXPIRY = process.env.JWT_REFRESH_EXPIRY || '7d';

function generateAccessToken(user) {
  return jwt.sign(
    { id: user.id, username: user.username, role: user.role || 'user' },
    JWT_SECRET,
    { expiresIn: ACCESS_EXPIRY }
  );
}

function generateRefreshToken(user) {
  return jwt.sign(
    { id: user.id, type: 'refresh' },
    JWT_REFRESH_SECRET,
    { expiresIn: REFRESH_EXPIRY }
  );
}

async function hashPassword(password) {
  const cost = parseInt(process.env.BCRYPT_COST || '12');
  return bcrypt.hash(password, cost);
}

async function comparePassword(password, hash) {
  return bcrypt.compare(password, hash);
}

function generateUuid() {
  return uuidv4();
}

function sanitizeUser(user) {
  const { password_hash, ...safe } = user;
  return safe;
}

function validateEmail(email) {
  const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  return re.test(email);
}

function validateFileType(mimeType, allowedTypes) {
  return allowedTypes.includes(mimeType);
}

function calculateLevel(xp) {
  return Math.floor(Math.sqrt(xp / 100)) + 1;
}

function calculateXpForNextLevel(level) {
  return Math.pow(level, 2) * 100;
}

module.exports = {
  generateAccessToken,
  generateRefreshToken,
  hashPassword,
  comparePassword,
  generateUuid,
  sanitizeUser,
  validateEmail,
  validateFileType,
  calculateLevel,
  calculateXpForNextLevel
};