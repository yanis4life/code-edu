const express = require('express');
const router = express.Router();
const { authenticate } = require('../middleware/auth');
const { handleLogin, handleRegister, handleRefresh, handleLogout, handleMe } = require('../controllers/authController');

router.post('/login', handleLogin);
router.post('/register', handleRegister);
router.post('/refresh', handleRefresh);
router.post('/logout', handleLogout);
router.get('/me', authenticate, handleMe);

module.exports = router;