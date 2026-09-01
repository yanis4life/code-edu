function initAuth() {
  const loginForm = document.getElementById('loginForm');
  const registerForm = document.getElementById('registerForm');
  const logoutBtn = document.getElementById('logoutBtn');
  const userMenu = document.getElementById('userMenu');
  const authButtons = document.getElementById('authButtons');

  function updateUI() {
    const user = api.getCurrentUser();
    updateNavForAuth();
    if (user && userMenu) {
      userMenu.style.display = 'flex';
      if (authButtons) authButtons.style.display = 'none';
      const usernameEl = userMenu.querySelector('.user-menu-name');
      if (user && user.role === 'admin' && usernameEl) usernameEl.innerHTML = '<i class="fas fa-shield-alt" style="color:var(--accent-lime);margin-right:4px;font-size:0.75rem"></i>' + (user.display_name || user.username);
      const avatarEl = userMenu.querySelector('.user-menu-avatar');
      if (usernameEl) usernameEl.textContent = user.display_name || user.username;
      if (avatarEl) {
        avatarEl.src = user.avatar_url || 'data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32"><circle cx="16" cy="16" r="16" fill="%23ccff00"/><text x="16" y="20" text-anchor="middle" fill="%23000" font-size="14" font-family="sans-serif">' + user.username.charAt(0).toUpperCase() + '</text></svg>';
      }
      const xpEl = userMenu.querySelector('.user-menu-xp');
      const mobileUser = document.getElementById('mobileUser');
      if (mobileUser && user) {
        mobileUser.style.display = 'flex';
        const img = mobileUser.querySelector('img');
        const name = mobileUser.querySelector('span');
        if (img) img.src = user.avatar_url || '';
        if (name) name.innerHTML = (user.role === 'admin' ? '<i class="fas fa-shield-alt" style="color:var(--accent-lime);margin-right:4px;font-size:0.7rem"></i>' : '') + (user.display_name || user.username);
      }
      if (xpEl) xpEl.textContent = `Level ${user.level || 1} - ${formatXp(user.xp || 0)} XP`;
    } else if (userMenu) {
      userMenu.style.display = 'none';
      if (authButtons) authButtons.style.display = 'flex';
    }
  }

  if (loginForm) {
    loginForm.addEventListener('submit', async (e) => {
      e.preventDefault();
      const username = loginForm.querySelector('#username').value;
      const password = loginForm.querySelector('#password').value;
      const errorEl = loginForm.querySelector('.form-error');
      const submitBtn = loginForm.querySelector('button[type="submit"]');

      try {
        submitBtn.disabled = true;
        submitBtn.textContent = 'Logging in...';
        await api.login(username, password);
        window.location.href = '/dashboard';
      } catch (err) {
        if (errorEl) errorEl.textContent = err.message;
        showToast(err.message, 'error');
      } finally {
        if (submitBtn) {
          submitBtn.disabled = false;
          submitBtn.textContent = 'Login';
        }
      }
    });
  }

  if (registerForm) {
    registerForm.addEventListener('submit', async (e) => {
      e.preventDefault();
      const username = registerForm.querySelector('#regUsername').value;
      const email = registerForm.querySelector('#regEmail').value;
      const password = registerForm.querySelector('#regPassword').value;
      const confirm = registerForm.querySelector('#regConfirm').value;
      const displayName = registerForm.querySelector('#regDisplayName')?.value || username;
      const errorEl = registerForm.querySelector('.form-error');
      const submitBtn = registerForm.querySelector('button[type="submit"]');

      if (password !== confirm) {
        if (errorEl) errorEl.textContent = 'Passwords do not match';
        return;
      }

      try {
        submitBtn.disabled = true;
        submitBtn.textContent = 'Creating account...';
        await api.register(username, email, password, displayName);
        window.location.href = '/dashboard';
      } catch (err) {
        if (errorEl) errorEl.textContent = err.message;
        showToast(err.message, 'error');
      } finally {
        if (submitBtn) {
          submitBtn.disabled = false;
          submitBtn.textContent = 'Create Account';
        }
      }
    });
  }

  if (logoutBtn) {
    logoutBtn.addEventListener('click', async () => {
      await api.logout();
      window.location.href = '/';
    });
  }

  updateUI();
}

document.addEventListener('DOMContentLoaded', () => {
  loadTheme();
  initAuth();
});