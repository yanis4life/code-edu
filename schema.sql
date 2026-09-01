CREATE TABLE IF NOT EXISTS users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  email TEXT UNIQUE NOT NULL,
  password_hash TEXT NOT NULL,
  display_name TEXT DEFAULT '',
  bio TEXT DEFAULT '',
  avatar_url TEXT DEFAULT '',
  xp INTEGER DEFAULT 0,
  level INTEGER DEFAULT 1,
  streak INTEGER DEFAULT 0,
  last_active DATE DEFAULT CURRENT_DATE,
  is_banned INTEGER DEFAULT 0,
  role TEXT DEFAULT 'user',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS lessons (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  language TEXT NOT NULL,
  level_number INTEGER NOT NULL,
  title TEXT NOT NULL,
  theory_text TEXT NOT NULL,
  code_example TEXT DEFAULT '',
  challenge_type TEXT NOT NULL,
  challenge_description TEXT NOT NULL,
  challenge_template TEXT DEFAULT '',
  correct_answer TEXT NOT NULL,
  hint TEXT DEFAULT '',
  xp_reward INTEGER DEFAULT 50,
  difficulty TEXT DEFAULT 'easy',
  is_active INTEGER DEFAULT 1,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  UNIQUE(language, level_number)
);

CREATE TABLE IF NOT EXISTS user_progress (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER NOT NULL,
  lesson_id INTEGER NOT NULL,
  completed INTEGER DEFAULT 0,
  attempts INTEGER DEFAULT 0,
  score INTEGER DEFAULT 0,
  completed_at DATETIME,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (lesson_id) REFERENCES lessons(id)
);

CREATE TABLE IF NOT EXISTS challenges (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT NOT NULL,
  description TEXT NOT NULL,
  difficulty TEXT NOT NULL,
  language TEXT NOT NULL,
  test_cases TEXT NOT NULL,
  template TEXT NOT NULL,
  solution TEXT NOT NULL,
  xp_reward INTEGER DEFAULT 100,
  time_limit INTEGER DEFAULT 300,
  is_active INTEGER DEFAULT 1,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS submissions (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER NOT NULL,
  challenge_id INTEGER,
  lesson_id INTEGER,
  code TEXT NOT NULL,
  language TEXT NOT NULL,
  status TEXT DEFAULT 'pending',
  result TEXT DEFAULT '',
  score INTEGER DEFAULT 0,
  is_public INTEGER DEFAULT 0,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (challenge_id) REFERENCES challenges(id),
  FOREIGN KEY (lesson_id) REFERENCES lessons(id)
);

CREATE TABLE IF NOT EXISTS friendships (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  requester_id INTEGER NOT NULL,
  receiver_id INTEGER NOT NULL,
  status TEXT DEFAULT 'pending',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (requester_id) REFERENCES users(id),
  FOREIGN KEY (receiver_id) REFERENCES users(id),
  UNIQUE(requester_id, receiver_id)
);

CREATE TABLE IF NOT EXISTS messages (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  sender_id INTEGER NOT NULL,
  receiver_id INTEGER NOT NULL,
  content TEXT NOT NULL,
  attachment_url TEXT DEFAULT '',
  attachment_name TEXT DEFAULT '',
  is_read INTEGER DEFAULT 0,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (sender_id) REFERENCES users(id),
  FOREIGN KEY (receiver_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS achievements (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER NOT NULL,
  badge_key TEXT NOT NULL,
  badge_name TEXT NOT NULL,
  badge_description TEXT NOT NULL,
  icon_url TEXT DEFAULT '',
  awarded_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id),
  UNIQUE(user_id, badge_key)
);

CREATE TABLE IF NOT EXISTS badges (
  key TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT NOT NULL,
  icon_url TEXT DEFAULT '',
  xp_reward INTEGER DEFAULT 0
);

CREATE TABLE IF NOT EXISTS contests (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT NOT NULL,
  description TEXT NOT NULL,
  start_time DATETIME NOT NULL,
  end_time DATETIME NOT NULL,
  status TEXT DEFAULT 'upcoming',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS contest_participants (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  contest_id INTEGER NOT NULL,
  user_id INTEGER NOT NULL,
  score INTEGER DEFAULT 0,
  rank INTEGER DEFAULT 0,
  completed_at DATETIME,
  FOREIGN KEY (contest_id) REFERENCES contests(id),
  FOREIGN KEY (user_id) REFERENCES users(id),
  UNIQUE(contest_id, user_id)
);

CREATE TABLE IF NOT EXISTS notifications (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER NOT NULL,
  type TEXT NOT NULL,
  title TEXT NOT NULL,
  content TEXT NOT NULL,
  is_read INTEGER DEFAULT 0,
  metadata TEXT DEFAULT '{}',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS file_metadata (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER NOT NULL,
  filename TEXT NOT NULL,
  original_name TEXT NOT NULL,
  mime_type TEXT NOT NULL,
  size INTEGER NOT NULL,
  bucket TEXT NOT NULL,
  key TEXT NOT NULL,
  is_public INTEGER DEFAULT 0,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS snippets (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER NOT NULL,
  title TEXT NOT NULL,
  language TEXT NOT NULL,
  code TEXT NOT NULL,
  description TEXT DEFAULT '',
  is_public INTEGER DEFAULT 0,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS comments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER NOT NULL,
  submission_id INTEGER NOT NULL,
  content TEXT NOT NULL,
  rating INTEGER DEFAULT 0,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (submission_id) REFERENCES submissions(id)
);

CREATE TABLE IF NOT EXISTS refresh_tokens (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER NOT NULL,
  token TEXT UNIQUE NOT NULL,
  expires_at DATETIME NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE INDEX idx_users_username ON users(username);
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_users_xp ON users(xp DESC);
CREATE INDEX idx_lessons_language_level ON lessons(language, level_number);
CREATE INDEX idx_user_progress_user ON user_progress(user_id);
CREATE INDEX idx_submissions_user ON submissions(user_id);
CREATE INDEX idx_messages_participants ON messages(sender_id, receiver_id);
CREATE INDEX idx_notifications_user ON notifications(user_id);
CREATE INDEX idx_friendships_status ON friendships(status);
CREATE INDEX idx_achievements_user ON achievements(user_id);
CREATE INDEX idx_snippets_user ON snippets(user_id);
CREATE INDEX idx_comments_submission ON comments(submission_id);

CREATE VIRTUAL TABLE IF NOT EXISTS search_index USING fts5(
  content, type, title, content=''
);

INSERT OR IGNORE INTO badges (key, name, description, xp_reward) VALUES
('first_code', 'First Code', 'Complete your first lesson', 100),
('challenge_10', '10 Challenges', 'Complete 10 coding challenges', 250),
('streak_7', 'Weekly Warrior', 'Maintain a 7-day streak', 500),
('master_python', 'Python Master', 'Complete all Python levels', 1000),
('speed_demon', 'Speed Demon', 'Complete a challenge in under 60 seconds', 300),
('social_butterfly', 'Social Butterfly', 'Make 5 friends', 200),
('contributor', 'Contributor', 'Share 10 public solutions', 150),
('perfect_score', 'Perfect Score', 'Get 100% on any challenge', 200),
('polyglot', 'Polyglot', 'Complete lessons in all languages', 1000),
('contest_winner', 'Contest Winner', 'Win a weekly contest', 750);