function errorHandler(err, req, res, next) {
  const status = err.status || 500;
  const message = err.message || 'Internal server error';

  req.logger.error({
    status,
    message,
    stack: err.stack,
    path: req.path,
    method: req.method
  });

  res.status(status).json({
    error: status === 500 ? 'Internal server error' : message,
    status
  });
}

module.exports = errorHandler;