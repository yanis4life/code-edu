function hidePageLoader() {
  var loader = document.getElementById('pageLoader');
  if (loader) {
    loader.classList.add('hidden');
    setTimeout(function() { if (loader) loader.style.display = 'none'; }, 400);
  }
}
if (document.readyState === 'complete') hidePageLoader();
else window.addEventListener('load', hidePageLoader);
setTimeout(hidePageLoader, 1500);

function showToast(message, type = 'info') {
  const existing = document.querySelector('.toast');
  if (existing) existing.remove();
  const toast = document.createElement('div');
  toast.className = `toast toast-${type}`;
  toast.textContent = message;
  document.body.appendChild(toast);
  setTimeout(() => {
    toast.style.opacity = '0';
    toast.style.transition = 'opacity 0.3s ease';
    setTimeout(() => toast.remove(), 300);
  }, 3000);
}

function toggleTheme() {
  const html = document.documentElement;
  const current = html.getAttribute('data-theme');
  const next = current === 'light' ? 'dark' : 'light';
  html.setAttribute('data-theme', next);
  localStorage.setItem('theme', next);
}

function loadTheme() {
  const saved = localStorage.getItem('theme') || 'dark';
  document.documentElement.setAttribute('data-theme', saved);
}

function toggleMenu() {
  const hamburger = document.getElementById('hamburger');
  const mobileMenu = document.getElementById('mobileMenu');
  const menuOverlay = document.getElementById('menuOverlay');
  if (!hamburger || !mobileMenu || !menuOverlay) return;
  hamburger.classList.toggle('active');
  mobileMenu.classList.toggle('active');
  menuOverlay.classList.toggle('active');
  document.body.style.overflow = mobileMenu.classList.contains('active') ? 'hidden' : '';
}

function updateNavForAuth() {
  const logoLinks = document.querySelectorAll('.nav-logo');
  const isLoggedIn = api.isAuthenticated();
  logoLinks.forEach(link => {
    if (isLoggedIn && link.getAttribute('href') === '/') {
      link.setAttribute('href', '/dashboard');
    }
  });
}

function formatDate(dateStr) {
  if (!dateStr) return '';
  const d = new Date(dateStr);
  return d.toLocaleDateString('en-US', { year: 'numeric', month: 'short', day: 'numeric' });
}

function formatXp(xp) {
  if (xp >= 1000000) return `${(xp / 1000000).toFixed(1)}M`;
  if (xp >= 1000) return `${(xp / 1000).toFixed(1)}K`;
  return xp.toString();
}

function calculateLevel(xp) {
  return Math.floor(Math.sqrt(xp / 100)) + 1;
}

function calculateXpProgress(xp) {
  const level = calculateLevel(xp);
  const currentLevelXp = Math.pow(level - 1, 2) * 100;
  const nextLevelXp = Math.pow(level, 2) * 100;
  const progress = ((xp - currentLevelXp) / (nextLevelXp - currentLevelXp)) * 100;
  return Math.min(100, Math.max(0, progress));
}

function debounce(fn, delay = 300) {
  let timer;
  return function(...args) {
    clearTimeout(timer);
    timer = setTimeout(() => fn.apply(this, args), delay);
  };
}

function escapeHtml(text) {
  const div = document.createElement('div');
  div.textContent = text;
  return div.innerHTML;
}

function getDifficultyColor(difficulty) {
  switch (difficulty) {
    case 'easy': return 'var(--accent-emerald)';
    case 'medium': return 'var(--accent-lime)';
    case 'hard': return '#ff6b6b';
    default: return 'var(--text-muted)';
  }
}

function getChallengeTypeIcon(type) {
  switch (type) {
    case 'fix_bug': return 'fa-bug';
    case 'complete_code': return 'fa-code';
    case 'predict_output': return 'fa-eye';
    case 'drag_drop': return 'fa-arrows-alt';
    case 'true_false': return 'fa-check-circle';
    case 'multiple_choice': return 'fa-list';
    default: return 'fa-terminal';
  }
}