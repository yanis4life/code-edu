# CodeEdu Platform - Deployment Guide

## Prerequisites

- Node.js 18+
- Python 3.9+
- Cloudflare account with Workers, Pages, D1, R2, and Queues enabled
- Wrangler CLI installed

## Setup

### 1. Install Dependencies

```bash
# Node.js
npm install

# Python
pip install -r requirements.txt

# Wrangler
npm install -g wrangler
```

### 2. Configure Environment Variables

Copy `.env.example` to `.env` and fill in your Cloudflare credentials:

```bash
cp .env.example .env
```

### 3. Initialize Database

```bash
# Create D1 database
wrangler d1 create code-edu-db

# Run migrations
wrangler d1 execute code-edu-db --file=./schema.sql

# Seed Python lessons
wrangler d1 execute code-edu-db --file=./python/seed_lessons.sql
```

### 4. Configure R2 Bucket

```bash
# Create R2 bucket
wrangler r2 bucket create code-edu-storage

# Configure CORS
wrangler r2 bucket cors set code-edu-storage --cors ./cors.json
```

### 5. Configure Queues

```bash
# Create queue
wrangler queues create code-edu-queue
```

### 6. Deploy

```bash
# Deploy frontend and API
wrangler pages deploy frontend --d1 DB --r2 R2_STORAGE

# Deploy Python workers (separate for each service)
cd python
# Each Python service can be deployed as a separate Worker
```

## Architecture

```
frontend/          - Static files (HTML, CSS, JS)
  index.html       - Landing page
  dashboard.html   - User dashboard
  lessons.html     - Lesson listing
  lesson.html      - Individual lesson view
  leaderboard.html - Global rankings
  profile.html     - User profile
  contests.html    - Weekly contests
  admin.html       - Admin panel
  search.html      - Search page
  settings.html    - User settings
  login.html       - Login page
  register.html    - Registration page
  404.html         - Not found page
  css/style.css    - Design system (dark, lime accent, glass)
  js/
    api.js         - API client with auth
    main.js        - Utilities and helpers
    auth.js        - Auth UI logic
    dashboard.js   - Page-specific logic

api/               - Node.js (Express) API
  server.js        - Main server entry
  routes/          - Route handlers
    auth.js, users.js, lessons.js, challenges.js,
    submissions.js, friends.js, messages.js,
    achievements.js, leaderboard.js, contests.js,
    notifications.js, admin.js, snippets.js,
    search.js, upload.js, health.js
  controllers/     - Business logic
  middleware/       - Auth, rate limiting, error handling
  utils/           - Helpers, storage utilities

python/            - Python microservices
  code_analysis.py    - Code analysis service
  pdf_generator.py    - PDF report generation
  data_analytics.py   - Usage analytics
  achievement_engine.py - Achievement detection
  leaderboard_service.py - Rankings calculation
  email_service.py    - Email notifications
  image_processor.py  - Avatar optimization
  snippet_validator.py - Code security scanning
  seed_lessons.py     - 100 Python lesson generator
  seed_lessons.sql    - Generated SQL seed data
```

## API Endpoints

### Auth
- POST /api/v1/auth/login - Login
- POST /api/v1/auth/register - Register
- POST /api/v1/auth/refresh - Refresh token
- POST /api/v1/auth/logout - Logout
- GET /api/v1/auth/me - Current user

### Users
- GET /api/v1/users/profile/:username - Get profile
- PUT /api/v1/users/profile - Update profile
- GET /api/v1/users/leaderboard - Global rankings
- GET /api/v1/users/dashboard - User dashboard

### Lessons
- GET /api/v1/lessons - List lessons
- GET /api/v1/lessons/:id - Get lesson detail
- POST /api/v1/lessons/:id/submit - Submit answer

### Challenges
- GET /api/v1/challenges - List challenges
- GET /api/v1/challenges/:id - Get challenge
- POST /api/v1/challenges/:id/submit - Submit solution

### Other
- GET /api/v1/health - Health check

## Security

- JWT with 15-minute access tokens
- Refresh tokens with 7-day expiry
- bcrypt password hashing (cost 12)
- Input validation and sanitization
- Rate limiting (100 auth/min, 1000 read/min)
- File upload size limits and type validation
- CORS configured for frontend domain
- Helmet security headers

## Cloudflare-Specific

- Frontend: Cloudflare Pages
- API: Cloudflare Workers / Pages Functions
- Database: Cloudflare D1 (SQLite)
- Storage: Cloudflare R2
- Queue: Cloudflare Queues
- KV: Optional caching layer
- Cron Triggers: Daily leaderboard updates, weekly contests