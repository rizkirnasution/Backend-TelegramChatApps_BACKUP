const express = require('express');
const { isVerified } = require('../middlewares/authorization');
const validation = require('../validations/auth.validation');
const runValidation = require('../middlewares/runValidation');
const {
  register,
  activation,
  login,
} = require('../controllers/auth.controller');

const router = express.Router();

router
  .post('/auth/register', validation.register, runValidation, register)
  .get('/auth/activation/:token', activation)
  .post('/auth/login', validation.login, login);

module.exports = router;
