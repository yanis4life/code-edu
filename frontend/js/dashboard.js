async function loadDashboard() {
  const container = document.getElementById('dashboardContent');
  if (!container) return;

  if (!api.isAuthenticated()) {
    window.location.href = '/login';
    return;
  }

  try {
    container.innerHTML = '';
    for (let i = 0; i < 8; i++) {
      const skeleton = document.createElement('div');
      skeleton.className = 'skeleton';
      skeleton.style.height = '100px';
      skeleton.style.marginBottom = '1rem';
      container.appendChild(skeleton);
    }

    const data = await api.get('/users/dashboard');
    const user = data.user;
    container.innerHTML = '';

    const statsGrid = document.createElement('div');
    statsGrid.className = 'bento-grid';
    statsGrid.style.marginBottom = '2rem';

    const stats = [
      { label: 'Total XP', value: formatXp(user.xp || 0), icon: 'fa-bolt' },
      { label: 'Level', value: user.level || 1, icon: 'fa-star' },
      { label: 'Streak', value: `${data.streak || 0} days`, icon: 'fa-fire' },
      { label: 'Rank', value: `#${data.rank || '-'}`, icon: 'fa-trophy' },
      { label: 'Lessons Done', value: data.lessonsCompleted || 0, icon: 'fa-book' },
      { label: 'Achievements', value: data.recentAchievements?.length || 0, icon: 'fa-medal' }
    ];

    stats.forEach(stat => {
      const card = document.createElement('div');
      card.className = 'bento-card';
      card.innerHTML = `
        <div class="bento-icon" style="font-size:1.5rem"><i class="fas ${stat.icon}"></i></div>
        <div class="bento-desc" style="font-size:0.7rem;text-transform:uppercase;letter-spacing:0.1em;color:var(--text-muted)">${stat.label}</div>
        <div class="bento-title" style="font-size:2rem">${stat.value}</div>
      `;
      statsGrid.appendChild(card);
    });

    container.appendChild(statsGrid);

    const xpProgress = calculateXpProgress(user.xp || 0);
    const progressBar = document.createElement('div');
    progressBar.className = 'bento-card';
    progressBar.style.marginBottom = '2rem';
    progressBar.innerHTML = `
      <div class="bento-desc" style="margin-bottom:0.5rem">Progress to Level ${(user.level || 1) + 1}</div>
      <div style="width:100%;height:8px;background:var(--glass-bg);border-radius:9999px;overflow:hidden">
        <div style="width:${xpProgress}%;height:100%;background:var(--accent-lime);border-radius:9999px;transition:width 0.5s ease"></div>
      </div>
      <div class="bento-desc" style="margin-top:0.5rem;font-family:var(--font-mono);font-size:0.75rem">${formatXp(user.xp || 0)} / ${formatXp(Math.pow(user.level || 1, 2) * 100)} XP</div>
    `;
    container.appendChild(progressBar);

    if (data.nextLesson) {
      const nextLesson = document.createElement('div');
      nextLesson.className = 'bento-card';
      nextLesson.style.marginBottom = '2rem';
      nextLesson.innerHTML = `
        <div class="section-label" style="margin-bottom:0.5rem">Next Lesson</div>
        <div class="bento-title">${data.nextLesson.title}</div>
        <div class="bento-desc" style="margin-bottom:1rem">Level ${data.nextLesson.level_number} - ${data.nextLesson.difficulty}</div>
        <a href="/lesson?id=${data.nextLesson.id}" class="neon-btn neon-btn-sm">Continue Learning</a>
      `;
      container.appendChild(nextLesson);
    }

    if (data.recentAchievements && data.recentAchievements.length > 0) {
      const achSection = document.createElement('div');
      achSection.innerHTML = `<div class="section-label" style="margin-bottom:1rem">Recent Achievements</div>`;
      const achGrid = document.createElement('div');
      achGrid.className = 'bento-grid';
      data.recentAchievements.forEach(ach => {
        const card = document.createElement('div');
        card.className = 'bento-card';
        card.innerHTML = `
          <div class="bento-icon" style="font-size:1.2rem;color:var(--accent-emerald)"><i class="fas fa-medal"></i></div>
          <div class="bento-title" style="font-size:1rem">${ach.badge_name}</div>
          <div class="bento-desc">${ach.badge_description}</div>
        `;
        achGrid.appendChild(card);
      });
      achSection.appendChild(achGrid);
      container.appendChild(achSection);
    }
  } catch (err) {
    container.innerHTML = `<div class="bento-card" style="text-align:center;padding:3rem"><div class="bento-desc">Failed to load dashboard: ${err.message}</div><a href="/login" class="neon-btn" style="margin-top:1rem">Login Again</a></div>`;
  }
}

const languages = [
  { id: 'python', name: 'Python', icon: 'fa-brands fa-python', desc: '100 levels from basics to advanced', color: '#3776AB' },
  { id: 'html', name: 'HTML & CSS', icon: 'fa-brands fa-html5', desc: '100 levels from structure to mastery', color: '#E34F26' },
  { id: 'javascript', name: 'JavaScript', icon: 'fa-brands fa-js', desc: '100 levels from syntax to advanced', color: '#F7DF1E' },
  { id: 'java', name: 'Java', icon: 'fa-brands fa-java', desc: '100 levels from OOP to advanced', color: '#ED8B00' },
  { id: 'sql', name: 'SQL', icon: 'fa-solid fa-database', desc: '100 levels from queries to advanced', color: '#4479A1' },
  { id: 'xml', name: 'XML', icon: 'fa-solid fa-code', desc: '100 levels from markup to mastery', color: '#0060AC' },
  { id: 'php', name: 'PHP', icon: 'fa-brands fa-php', desc: '100 levels from web scripts to advanced', color: '#777BB3' },
  { id: 'kotlin', name: 'Kotlin', icon: 'fa-brands fa-android', desc: '100 levels from basics to coroutines', color: '#7F52FF' }
];

async function loadLessons() {
  const container = document.getElementById('lessonsContent');
  if (!container) return;

  const langParam = new URLSearchParams(window.location.search).get('language');
  if (langParam) {
    return loadLanguageLevels(langParam);
  }

  container.innerHTML = '';
  const header = document.createElement('div');
  header.className = 'section-header';
  header.innerHTML = '<div class="section-label">Choose Your Path</div><h2 class="section-title">Pick a <span>Language</span></h2>';
  container.appendChild(header);

  const grid = document.createElement('div');
  grid.className = 'bento-grid';

  const user = api.getCurrentUser();
  languages.forEach(lang => {
    const card = document.createElement('div');
    card.className = 'bento-card';
    card.style.cursor = 'pointer';
    card.onclick = () => { window.location.href = '/lessons?language=' + lang.id; };
    card.innerHTML = '<div class="bento-icon" style="font-size:2.5rem;color:' + lang.color + '"><i class="' + lang.icon + '"></i></div><div class="bento-title" style="font-size:1.5rem">' + lang.name + '</div><div class="bento-desc">' + lang.desc + '</div><div style="margin-top:auto;padding-top:1rem"><span class="neon-btn neon-btn-sm" style="display:inline-flex">Start Learning</span></div>';
    grid.appendChild(card);
  });

  container.appendChild(grid);
}

async function loadLanguageLevels(language) {
  const container = document.getElementById('lessonsContent');
  if (!container) return;

  try {
    container.innerHTML = '<div class="loading-spinner" style="margin:3rem auto"></div>';

    const data = await api.get('/lessons', { language });

    container.innerHTML = '';

    const backBtn = document.createElement('a');
    backBtn.href = '/lessons';
    backBtn.className = 'glass-btn';
    backBtn.style.cssText = 'margin-bottom:1.5rem;display:inline-flex;font-size:0.75rem;padding:0.4rem 0.75rem';
    backBtn.innerHTML = '<i class="fas fa-arrow-left"></i> All Languages';
    container.appendChild(backBtn);

    const found = languages.find(l => l.id === language);
    const langName = found ? found.name : language.charAt(0).toUpperCase() + language.slice(1);

    const header = document.createElement('div');
    header.className = 'section-header';
    header.innerHTML = '<div class="section-label">' + langName + ' Curriculum</div><h2 class="section-title">' + langName + ' <span>Levels</span></h2>';
    container.appendChild(header);

    const levelsGrid = document.createElement('div');
    levelsGrid.className = 'bento-grid';

    data.lessons.forEach(lesson => {
      const card = document.createElement('div');
      card.className = 'bento-card';
      const completed = lesson.completed;
      const score = lesson.score || 0;
      const locked = lesson.locked && !completed;

      card.innerHTML = '<div style="display:flex;justify-content:space-between;align-items:flex-start;margin-bottom:1rem"><span class="badge ' + (completed ? 'badge-emerald' : 'badge-muted') + '">Level ' + lesson.level_number + '</span><span class="badge badge-lime">' + lesson.difficulty + '</span></div><div class="bento-title" style="font-size:1.1rem">' + (locked ? '<i class="fas fa-lock" style="color:var(--text-muted);margin-right:6px;font-size:0.8rem"></i>' : '') + lesson.title + '</div><div class="bento-desc" style="margin-bottom:1rem">' + lesson.challenge_type.replace(/_/g, ' ') + '</div><div style="display:flex;justify-content:space-between;align-items:center;margin-top:auto"><span class="bento-desc" style="font-family:var(--font-mono);font-size:0.75rem">+' + lesson.xp_reward + ' XP</span>' + (completed ? '<span style="color:var(--accent-emerald);font-family:var(--font-mono);font-size:0.75rem">' + score + '%</span>' : locked ? '<span style="color:var(--text-muted);font-family:var(--font-mono);font-size:0.75rem">Locked</span>' : '<a href="/lesson?id=' + lesson.id + '" class="neon-btn neon-btn-sm">Start</a>') + '</div>' + (completed ? '<div style="width:100%;height:4px;background:var(--glass-bg);border-radius:9999px;margin-top:0.75rem;overflow:hidden"><div style="width:' + score + '%;height:100%;background:var(--accent-emerald);border-radius:9999px"></div></div>' : '');
      levelsGrid.appendChild(card);
    });

    container.appendChild(levelsGrid);
  } catch (err) {
    container.innerHTML = '<div class="bento-card" style="text-align:center;padding:3rem"><div class="bento-desc">Failed to load lessons: ' + err.message + '</div></div>';
  }
}

async function loadLessonDetail() {
  const container = document.getElementById('lessonContent');
  if (!container) return;

  const lessonId = new URLSearchParams(window.location.search).get('id');
  const mode = new URLSearchParams(window.location.search).get('mode') || 'learn';
  if (!lessonId) {
    container.innerHTML = '<div class="bento-card" style="text-align:center;padding:3rem"><div class="bento-desc">No lesson specified</div></div>';
    return;
  }

  try {
    container.innerHTML = '<div class="loading-spinner" style="margin:3rem auto"></div>';

    const data = await api.get('/lessons/' + lessonId);
    const lesson = data.lesson;

    if (mode === 'practice') {
      loadPracticeView(container, lesson);
    } else {
      loadLearnView(container, lesson);
    }
  } catch (err) {
    container.innerHTML = '<div class="bento-card" style="text-align:center;padding:3rem"><div class="bento-desc">Failed to load lesson: ' + err.message + '</div></div>';
  }
}

function loadLearnView(container, lesson) {
  const backLink = document.createElement('a');
  backLink.href = '/lessons?language=' + lesson.language;
  backLink.className = 'glass-btn';
  backLink.style.cssText = 'margin-bottom:1rem;display:inline-flex;font-size:0.75rem;padding:0.4rem 0.75rem';
  backLink.innerHTML = '<i class="fas fa-arrow-left"></i> Back to Levels';
  container.appendChild(backLink);

  const header = document.createElement('div');
  header.className = 'bento-card';
  header.style.cssText = 'margin-bottom:1rem;padding:1.25rem 1.5rem';
  header.innerHTML = '<div style="display:flex;justify-content:space-between;align-items:center;flex-wrap:wrap;gap:0.5rem"><div><div class="section-label">Level ' + lesson.level_number + ' - ' + lesson.difficulty + '</div><h2 class="section-title" style="font-size:1.5rem">' + lesson.title + '</h2></div><span class="badge badge-lime">+' + lesson.xp_reward + ' XP</span></div>';
  container.appendChild(header);

  const theoryCard = document.createElement('div');
  theoryCard.className = 'bento-card';
  theoryCard.innerHTML = '<div class="section-label" style="margin-bottom:0.75rem">Lesson</div><h3 class="bento-title" style="font-size:1.1rem;margin-bottom:0.75rem">' + lesson.title + '</h3><div class="bento-desc" style="line-height:1.8;margin-bottom:1.5rem">' + lesson.theory_text + '</div>' + (lesson.code_example ? '<div style="padding:1rem;background:var(--bg-viewport);border-radius:var(--radius-sm);font-family:var(--font-mono);font-size:0.85rem;line-height:1.8;overflow-x:auto;margin-bottom:1.5rem"><pre style="color:var(--text-secondary)">' + escapeHtml(lesson.code_example) + '</pre></div>' : '') + '<div style="display:flex;gap:1rem;flex-wrap:wrap"><a href="/lesson?id=' + lesson.id + '&mode=practice" class="neon-btn">Next: Practice <i class="fas fa-arrow-right"></i></a></div>';
  container.appendChild(theoryCard);
}

function loadPracticeView(container, lesson) {
  const backLink = document.createElement('a');
  backLink.href = '/lesson?id=' + lesson.id + '&mode=learn';
  backLink.className = 'glass-btn';
  backLink.style.cssText = 'margin-bottom:1rem;display:inline-flex;font-size:0.75rem;padding:0.4rem 0.75rem';
  backLink.innerHTML = '<i class="fas fa-arrow-left"></i> Back to Lesson';
  container.appendChild(backLink);

  const header = document.createElement('div');
  header.className = 'bento-card';
  header.style.cssText = 'margin-bottom:1rem;padding:1.25rem 1.5rem';
  header.innerHTML = '<div style="display:flex;justify-content:space-between;align-items:center;flex-wrap:wrap;gap:0.5rem"><div><div class="section-label">Practice - Level ' + lesson.level_number + '</div><h2 class="section-title" style="font-size:1.3rem">' + lesson.title + '</h2></div><span class="badge badge-lime">+' + lesson.xp_reward + ' XP</span></div>';
  container.appendChild(header);

  const practiceCard = document.createElement('div');
  practiceCard.className = 'bento-card';
  practiceCard.innerHTML = '<div class="section-label" style="margin-bottom:0.75rem">Challenge</div><h3 class="bento-title" style="font-size:1.1rem;margin-bottom:0.5rem">' + lesson.challenge_type.replace(/_/g, ' ') + '</h3><div class="bento-desc" style="margin-bottom:1rem">' + lesson.challenge_description + '</div><div id="challengeArea">' + (lesson.challenge_template ? '<div style="background:var(--bg-viewport);border-radius:var(--radius-sm);padding:0.75rem;margin-bottom:1rem"><textarea id="codeEditor" class="form-input" style="font-family:var(--font-mono);font-size:0.85rem;min-height:180px;resize:vertical;background:transparent;border:none;outline:none;color:var(--text-primary);padding:0" spellcheck="false">' + escapeHtml(lesson.challenge_template) + '</textarea></div>' : '') + (lesson.challenge_type === 'true_false' ? '<div style="display:flex;gap:1rem;margin-bottom:1rem"><button class="glass-btn" onclick="submitAnswer(\'true\')" style="flex:1;justify-content:center">True</button><button class="glass-btn" onclick="submitAnswer(\'false\')" style="flex:1;justify-content:center">False</button></div>' : '') + (lesson.challenge_type === 'predict_output' ? '<div style="margin-bottom:1rem"><label class="form-label">Your Answer</label><input type="text" id="predictInput" class="form-input" placeholder="Type your answer here..."></div>' : '') + (lesson.challenge_type === 'multiple_choice' ? '<div id="mcOptions" style="display:flex;flex-direction:column;gap:0.5rem;margin-bottom:1rem"></div>' : '') + '<div id="lessonResult" style="display:none;margin:1rem 0"></div><div id="submitArea" style="display:flex;gap:0.75rem;flex-wrap:wrap">' + (lesson.challenge_template ? '<button class="neon-btn" onclick="submitCode()" id="submitBtn">Submit</button>' : '') + (lesson.challenge_type === 'predict_output' ? '<button class="neon-btn" onclick="submitPredict()" id="predictBtn">Submit</button>' : '') + (lesson.hint ? '<button class="glass-btn" onclick="showHint(\'' + escapeHtml(lesson.hint) + '\')" id="hintBtn">Hint (-10 XP)</button>' : '') + '</div></div>';
  container.appendChild(practiceCard);

  if (lesson.challenge_type === 'multiple_choice' && lesson.challenge_template) {
    const options = lesson.challenge_template.split('\n').filter(function(l) { return l.trim(); });
    const mcContainer = document.getElementById('mcOptions');
    options.forEach(function(opt) {
      const btn = document.createElement('button');
      btn.className = 'glass-btn';
      btn.style.width = '100%';
      btn.style.justifyContent = 'center';
      btn.textContent = opt;
      btn.onclick = function() { submitAnswer(opt); };
      mcContainer.appendChild(btn);
    });
  }
}

async function submitCode() {
  const editor = document.getElementById('codeEditor');
  const resultDiv = document.getElementById('lessonResult');
  const submitArea = document.getElementById('submitArea');
  const lessonId = new URLSearchParams(window.location.search).get('id');

  if (!editor || !lessonId) return;

  try {
    resultDiv.style.display = 'block';
    resultDiv.innerHTML = '<div class="loading-spinner"></div>';

    const data = await api.post(`/lessons/${lessonId}/submit`, { code: editor.value });

    resultDiv.innerHTML = `
      <div class="bento-card" style="padding:1rem;${data.isCorrect ? 'border-color:var(--accent-emerald)' : 'border-color:#ff6b6b'}">
        <div style="display:flex;align-items:center;gap:0.75rem;margin-bottom:0.5rem">
          <i class="fas ${data.isCorrect ? 'fa-check-circle' : 'fa-times-circle'}" style="font-size:1.5rem;color:${data.isCorrect ? 'var(--accent-emerald)' : '#ff6b6b'}"></i>
          <span class="bento-title" style="font-size:1.1rem">${data.isCorrect ? 'Correct!' : 'Incorrect'}</span>
        </div>
        <div class="bento-desc">Score: ${data.score}%</div>
        ${data.xpEarned > 0 ? `<div class="bento-desc" style="color:var(--accent-lime)">+${data.xpEarned} XP earned!</div>` : ''}
        ${data.hint ? `<div class="bento-desc" style="margin-top:0.5rem;padding:0.5rem;background:var(--glass-bg);border-radius:var(--radius-sm)">Hint: ${data.hint}</div>` : ''}
      </div>
    `;

    if (data.isCorrect) {
      if (data.nextLessonId) {
        submitArea.innerHTML = `<a href="/lesson?id=${data.nextLessonId}" class="neon-btn">Next Level ${data.nextLevel} <i class="fas fa-arrow-right"></i></a>`;
      } else {
        submitArea.innerHTML = `<a href="/lessons" class="neon-btn">All Levels Complete! <i class="fas fa-trophy"></i></a>`;
      }
    }
  } catch (err) {
    resultDiv.style.display = 'block';
    resultDiv.innerHTML = `<div class="bento-desc" style="color:#ff6b6b">${err.message}</div>`;
  }
}

async function submitAnswer(answer) {
  const resultDiv = document.getElementById('lessonResult');
  const submitArea = document.getElementById('submitArea');
  const lessonId = new URLSearchParams(window.location.search).get('id');

  if (!lessonId) return;

  try {
    resultDiv.style.display = 'block';
    resultDiv.innerHTML = '<div class="loading-spinner"></div>';

    const data = await api.post(`/lessons/${lessonId}/submit`, { answer: String(answer) });

    resultDiv.innerHTML = `
      <div class="bento-card" style="padding:1rem;${data.isCorrect ? 'border-color:var(--accent-emerald)' : 'border-color:#ff6b6b'}">
        <div style="display:flex;align-items:center;gap:0.75rem;margin-bottom:0.5rem">
          <i class="fas ${data.isCorrect ? 'fa-check-circle' : 'fa-times-circle'}" style="font-size:1.5rem;color:${data.isCorrect ? 'var(--accent-emerald)' : '#ff6b6b'}"></i>
          <span class="bento-title" style="font-size:1.1rem">${data.isCorrect ? 'Correct!' : 'Incorrect'}</span>
        </div>
        <div class="bento-desc">Score: ${data.score}%</div>
        ${data.xpEarned > 0 ? `<div class="bento-desc" style="color:var(--accent-lime)">+${data.xpEarned} XP earned!</div>` : ''}
        ${data.hint ? `<div class="bento-desc" style="margin-top:0.5rem;padding:0.5rem;background:var(--glass-bg);border-radius:var(--radius-sm)">Hint: ${data.hint}</div>` : ''}
      </div>
    `;

    if (data.isCorrect) {
      if (data.nextLessonId) {
        submitArea.innerHTML = `<a href="/lesson?id=${data.nextLessonId}" class="neon-btn">Next Level ${data.nextLevel} <i class="fas fa-arrow-right"></i></a>`;
      } else {
        submitArea.innerHTML = `<a href="/lessons" class="neon-btn">All Levels Complete! <i class="fas fa-trophy"></i></a>`;
      }
    }
  } catch (err) {
    resultDiv.style.display = 'block';
    resultDiv.innerHTML = `<div class="bento-desc" style="color:#ff6b6b">${err.message}</div>`;
  }
}

async function submitPredict() {
  const input = document.getElementById('predictInput');
  const resultDiv = document.getElementById('lessonResult');
  const submitArea = document.getElementById('submitArea');
  const lessonId = new URLSearchParams(window.location.search).get('id');
  if (!input || !lessonId) return;
  try {
    resultDiv.style.display = 'block';
    resultDiv.innerHTML = '<div class="loading-spinner"></div>';
    const data = await api.post('/lessons/' + lessonId + '/submit', { answer: input.value });
    resultDiv.innerHTML = '<div class="bento-card" style="padding:1rem;' + (data.isCorrect ? 'border-color:var(--accent-emerald)' : 'border-color:#ff6b6b') + '"><div style="display:flex;align-items:center;gap:0.75rem;margin-bottom:0.5rem"><i class="fas ' + (data.isCorrect ? 'fa-check-circle' : 'fa-times-circle') + '" style="font-size:1.5rem;color:' + (data.isCorrect ? 'var(--accent-emerald)' : '#ff6b6b') + '"></i><span class="bento-title" style="font-size:1.1rem">' + (data.isCorrect ? 'Correct!' : 'Incorrect') + '</span></div><div class="bento-desc">Score: ' + data.score + '%</div>' + (data.xpEarned > 0 ? '<div class="bento-desc" style="color:var(--accent-lime)">+' + data.xpEarned + ' XP earned!</div>' : '') + (data.hint ? '<div class="bento-desc" style="margin-top:0.5rem;padding:0.5rem;background:var(--glass-bg);border-radius:var(--radius-sm)">Hint: ' + data.hint + '</div>' : '') + '</div>';
    if (data.isCorrect) {
      if (data.nextLessonId) { submitArea.innerHTML = '<a href="/lesson?id=' + data.nextLessonId + '" class="neon-btn">Next Level ' + data.nextLevel + ' <i class="fas fa-arrow-right"></i></a>'; }
      else { submitArea.innerHTML = '<a href="/lessons" class="neon-btn">All Levels Complete! <i class="fas fa-trophy"></i></a>'; }
    }
  } catch (err) {
    resultDiv.style.display = 'block';
    resultDiv.innerHTML = '<div class="bento-desc" style="color:#ff6b6b">' + err.message + '</div>';
  }
}

async function toggleTheory() {
  const content = document.getElementById('theoryContent');
  const icon = document.getElementById('theoryIcon');
  if (!content || !icon) return;
  if (content.style.display === 'none') {
    content.style.display = 'block';
    icon.style.transform = 'rotate(90deg)';
  } else {
    content.style.display = 'none';
    icon.style.transform = 'rotate(0deg)';
  }
}

async function showHint(hint) {
  const resultDiv = document.getElementById('lessonResult');
  const lessonId = new URLSearchParams(window.location.search).get('id');
  resultDiv.style.display = 'block';
  resultDiv.innerHTML = '<div class="loading-spinner"></div>';
  try {
    const data = await api.post('/lessons/' + lessonId + '/hint');
    resultDiv.innerHTML = '<div class="bento-card" style="padding:1rem;border-color:var(--accent-lime)"><div style="display:flex;align-items:center;gap:0.75rem;margin-bottom:0.5rem"><i class="fas fa-lightbulb" style="color:var(--accent-lime);font-size:1.2rem"></i><span class="bento-title" style="font-size:1rem">Hint</span></div><div class="bento-desc">' + hint + '</div><div class="bento-desc" style="margin-top:0.5rem;color:var(--accent-lime);font-family:var(--font-mono);font-size:0.75rem">-10 XP used</div></div>';
  } catch (err) {
    resultDiv.innerHTML = '<div class="bento-card" style="padding:1rem;border-color:#ff6b6b"><div class="bento-desc" style="color:#ff6b6b">' + err.message + '</div></div>';
  }
}

async function loadLeaderboard() {
  const container = document.getElementById('leaderboardContent');
  if (!container) return;

  try {
    container.innerHTML = '<div class="loading-spinner" style="margin:3rem auto"></div>';

    const data = await api.get('/leaderboard');
    container.innerHTML = '';
    container.innerHTML = `<div class="section-label">Global Rankings</div><h2 class="section-title" style="margin-bottom:2rem">Leaderboard</h2>`;

    const table = document.createElement('div');
    table.className = 'bento-card';
    table.style.padding = '0';

    let html = '';
    (data.users || []).forEach((user, i) => {
      const rank = i + 1;
      const isCurrentUser = api.getCurrentUser() && api.getCurrentUser().username === user.username;
      html += `
        <div style="display:flex;align-items:center;gap:1rem;padding:1rem 1.5rem;border-bottom:1px solid var(--glass-border);${isCurrentUser ? 'background:rgba(255,107,107,0.05)' : ''}">
          <span style="font-family:var(--font-mono);font-size:1.25rem;font-weight:700;color:${rank <= 3 ? 'var(--accent-lime)' : 'var(--text-muted)'};width:2rem">#${rank}</span>
          <div style="width:40px;height:40px;border-radius:50%;background:var(--glass-bg);border:1px solid var(--glass-border);display:flex;align-items:center;justify-content:center;font-family:var(--font-mono);font-size:0.8rem;overflow:hidden">
            ${user.avatar_url ? `<img src="${user.avatar_url}" style="width:100%;height:100%;object-fit:cover">` : (user.role === "admin" ? `<i class="fas fa-shield-alt" style="color:var(--accent-lime);font-size:1rem"></i>` : user.username.charAt(0).toUpperCase())}
          </div>
          <div style="flex:1">
            <div style="font-weight:600">${user.role === "admin" ? `<i class="fas fa-shield-alt" style="color:var(--accent-lime);margin-right:4px;font-size:0.7rem"></i>` : ""}${user.display_name || user.username}</div>
            <div style="font-family:var(--font-mono);font-size:0.75rem;color:var(--text-muted)">Level ${user.level}</div>
          </div>
          <div style="text-align:right">
            <div style="font-family:var(--font-mono);font-weight:700;color:var(--accent-lime)">${formatXp(user.xp)}</div>
            <div style="font-size:0.75rem;color:var(--text-muted)">XP</div>
          </div>
        </div>
      `;
    });

    table.innerHTML = html;
    container.appendChild(table);
  } catch (err) {
    container.innerHTML = `<div class="bento-card" style="text-align:center;padding:3rem"><div class="bento-desc">Failed to load leaderboard: ${err.message}</div></div>`;
  }
}

async function loadProfile() {
  const container = document.getElementById('profileContent');
  if (!container) return;

  const username = new URLSearchParams(window.location.search).get('username');
  const targetUsername = username || (api.getCurrentUser() ? api.getCurrentUser().username : null);

  if (!targetUsername) {
    container.innerHTML = '<div class="bento-card" style="text-align:center;padding:3rem"><div class="bento-desc">Please log in to view your profile</div></div>';
    return;
  }

  try {
    container.innerHTML = '<div class="loading-spinner" style="margin:3rem auto"></div>';

    const data = await api.get(`/users/profile/${targetUsername}`);
    const user = data.user;

    const xpProgress = calculateXpProgress(user.xp || 0);

    container.innerHTML = `
      <div class="bento-card" style="margin-bottom:1.5rem">
        <div style="display:flex;align-items:center;gap:2rem;flex-wrap:wrap">
          <div style="width:100px;height:100px;border-radius:50%;background:var(--glass-bg);border:2px solid var(--glass-border-hover);display:flex;align-items:center;justify-content:center;overflow:hidden">
            ${user.avatar_url ? `<img src="${user.avatar_url}" style="width:100%;height:100%;object-fit:cover">` : `<span style="font-family:var(--font-heading);font-size:2.5rem;color:var(--accent-lime)">${(user.display_name || user.username).charAt(0).toUpperCase()}</span>`}
          </div>
          <div style="flex:1">
            <h2 class="section-title" style="font-size:2rem">${user.role === "admin" ? `<i class="fas fa-shield-alt" style="color:var(--accent-lime);margin-right:6px;font-size:1.2rem"></i>` : ""}${user.display_name || user.username}</h2>
            <div style="font-family:var(--font-mono);color:var(--text-secondary);font-size:0.85rem">${user.role === "admin" ? `<span class="badge badge-lime" style="margin-right:0.5rem">admin</span>` : ""}@${user.username}</div>
            ${user.bio ? `<div class="bento-desc" style="margin-top:0.5rem">${user.bio}</div>` : ''}
            <div style="display:flex;gap:1.5rem;margin-top:1rem;flex-wrap:wrap">
              <div><span style="font-family:var(--font-mono);font-weight:700;color:var(--accent-lime)">${formatXp(user.xp || 0)}</span> <span class="bento-desc">XP</span></div>
              <div><span style="font-family:var(--font-mono);font-weight:700">Level ${user.level || 1}</span></div>
              <div><span style="font-family:var(--font-mono);font-weight:700">${user.lessonsCompleted || 0}</span> <span class="bento-desc">Lessons</span></div>
              <div><span style="font-family:var(--font-mono);font-weight:700">${user.achievements || 0}</span> <span class="bento-desc">Achievements</span></div>
            </div>
          </div>
        </div>
        <div style="width:100%;height:6px;background:var(--glass-bg);border-radius:9999px;margin-top:1.5rem;overflow:hidden">
          <div style="width:${xpProgress}%;height:100%;background:var(--accent-lime);border-radius:9999px;transition:width 0.5s ease"></div>
        </div>
      </div>

      ${user.publicSubmissions && user.publicSubmissions.length > 0 ? `
        <div class="section-label" style="margin-bottom:1rem">Public Solutions</div>
        <div class="bento-grid" style="grid-template-columns:1fr">
          ${user.publicSubmissions.map(sub => `
            <div class="bento-card" style="padding:1rem 1.5rem">
              <div style="display:flex;justify-content:space-between;align-items:center">
                <div>
                  <div class="bento-title" style="font-size:0.95rem">${sub.lesson_title || 'Challenge'}</div>
                  <div class="bento-desc" style="font-size:0.75rem">${sub.language} - Score: ${sub.score}%</div>
                </div>
                <span class="badge badge-muted">${formatDate(sub.created_at)}</span>
              </div>
            </div>
          `).join('')}
        </div>
      ` : ''}

      ${!username && api.getCurrentUser() ? `
        <div style="margin-top:2rem">
          <a href="/settings" class="glass-btn">Edit Profile</a>
        </div>
      ` : ''}
    `;
  } catch (err) {
    container.innerHTML = `<div class="bento-card" style="text-align:center;padding:3rem"><div class="bento-desc">Failed to load profile: ${err.message}</div></div>`;
  }
}

async function loadSearch() {
  const container = document.getElementById('searchContent');
  const searchInput = document.getElementById('searchInput');
  if (!container || !searchInput) return;

  searchInput.addEventListener('input', debounce(async () => {
    const query = searchInput.value.trim();
    if (query.length < 2) {
      container.innerHTML = '<div class="bento-desc" style="text-align:center;padding:2rem">Type at least 2 characters to search</div>';
      return;
    }

    try {
      container.innerHTML = '<div class="loading-spinner" style="margin:2rem auto"></div>';

      const data = await api.get('/search', { q: query });

      container.innerHTML = '';

      if (data.results.lessons.length > 0) {
        container.innerHTML += `<div class="section-label" style="margin:1rem 0 0.5rem">Lessons</div>`;
        data.results.lessons.slice(0, 5).forEach(l => {
          container.innerHTML += `<div class="bento-card" style="padding:0.75rem 1rem;margin-bottom:0.5rem;cursor:pointer" onclick="window.location.href='/lesson?id=${l.id}'"><div class="bento-title" style="font-size:0.95rem">${l.title}</div><div class="bento-desc" style="font-size:0.75rem">${l.language} - Level ${l.level_number}</div></div>`;
        });
      }

      if (data.results.users.length > 0) {
        container.innerHTML += `<div class="section-label" style="margin:1rem 0 0.5rem">Users</div>`;
        data.results.users.slice(0, 5).forEach(u => {
          container.innerHTML += `<div class="bento-card" style="padding:0.75rem 1rem;margin-bottom:0.5rem;cursor:pointer" onclick="window.location.href='/profile?username=${u.username}'"><div class="bento-title" style="font-size:0.95rem">${u.role === "admin" ? `<i class="fas fa-shield-alt" style="color:var(--accent-lime);margin-right:4px;font-size:0.7rem"></i>` : ""}${u.display_name || u.username}</div><div class="bento-desc" style="font-size:0.75rem">Level ${u.level} - ${formatXp(u.xp)} XP</div></div>`;
        });
      }

      if (data.results.lessons.length === 0 && data.results.users.length === 0 && data.results.challenges.length === 0) {
        container.innerHTML = '<div class="bento-desc" style="text-align:center;padding:2rem">No results found</div>';
      }
    } catch (err) {
      container.innerHTML = `<div class="bento-desc" style="text-align:center;padding:2rem;color:#ff6b6b">${err.message}</div>`;
    }
  }, 400));
}