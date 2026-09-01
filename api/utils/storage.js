const { v4: uuidv4 } = require('uuid');

const ALLOWED_AVATAR_TYPES = ['image/jpeg', 'image/png', 'image/webp', 'image/gif'];
const ALLOWED_SNIPPET_TYPES = ['text/plain'];
const ALLOWED_ATTACHMENT_TYPES = [
  'image/jpeg', 'image/png', 'image/webp', 'image/gif',
  'application/pdf', 'text/plain', 'application/zip',
  'application/json'
];
const MAX_AVATAR_SIZE = parseInt(process.env.MAX_AVATAR_SIZE || '5242880');
const MAX_SNIPPET_SIZE = parseInt(process.env.MAX_SNIPPET_SIZE || '10485760');
const MAX_ATTACHMENT_SIZE = parseInt(process.env.MAX_ATTACHMENT_SIZE || '20971520');

async function uploadToR2(r2, bucket, key, buffer, contentType) {
  if (!r2) {
    return { success: false, error: 'R2 storage not available' };
  }

  try {
    await r2.put(key, buffer, {
      httpMetadata: { contentType },
      customMetadata: { uploadedAt: new Date().toISOString() }
    });

    return { success: true, key };
  } catch (err) {
    return { success: false, error: err.message };
  }
}

async function deleteFromR2(r2, bucket, key) {
  if (!r2) {
    return { success: false, error: 'R2 storage not available' };
  }

  try {
    await r2.delete(key);
    return { success: true };
  } catch (err) {
    return { success: false, error: err.message };
  }
}

async function generateSignedUrl(r2, bucket, key, expiresInSeconds = 3600) {
  if (!r2) {
    return null;
  }

  try {
    const url = await r2.createSignedUrl(key, {
      expiresIn: expiresInSeconds,
      method: 'GET'
    });
    return url;
  } catch (err) {
    return null;
  }
}

function generateFileKey(userId, originalName, prefix = 'uploads') {
  const ext = originalName.split('.').pop();
  const uuid = uuidv4();
  return `${prefix}/${userId}/${uuid}.${ext}`;
}

function validateFileUpload(file, type) {
  const errors = [];

  if (!file) {
    errors.push('No file provided');
    return errors;
  }

  let allowedTypes, maxSize;

  switch (type) {
    case 'avatar':
      allowedTypes = ALLOWED_AVATAR_TYPES;
      maxSize = MAX_AVATAR_SIZE;
      break;
    case 'snippet':
      allowedTypes = ALLOWED_SNIPPET_TYPES;
      maxSize = MAX_SNIPPET_SIZE;
      break;
    case 'attachment':
      allowedTypes = ALLOWED_ATTACHMENT_TYPES;
      maxSize = MAX_ATTACHMENT_SIZE;
      break;
    default:
      allowedTypes = ALLOWED_ATTACHMENT_TYPES;
      maxSize = MAX_ATTACHMENT_SIZE;
  }

  if (!allowedTypes.includes(file.mimetype)) {
    errors.push(`Invalid file type: ${file.mimetype}. Allowed: ${allowedTypes.join(', ')}`);
  }

  if (file.size > maxSize) {
    errors.push(`File too large: ${file.size} bytes. Max: ${maxSize} bytes`);
  }

  return errors;
}

module.exports = {
  uploadToR2,
  deleteFromR2,
  generateSignedUrl,
  generateFileKey,
  validateFileUpload,
  ALLOWED_AVATAR_TYPES,
  ALLOWED_SNIPPET_TYPES,
  ALLOWED_ATTACHMENT_TYPES,
  MAX_AVATAR_SIZE,
  MAX_SNIPPET_SIZE,
  MAX_ATTACHMENT_SIZE
};