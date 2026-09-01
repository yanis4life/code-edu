const API_BASE = '/api/v1';

class ApiClient {
  constructor() {
    this.token = localStorage.getItem('accessToken') || null;
    this.refreshToken = localStorage.getItem('refreshToken') || null;
  }

  setTokens(accessToken, refreshToken) {
    this.token = accessToken;
    this.refreshToken = refreshToken;
    localStorage.setItem('accessToken', accessToken);
    if (refreshToken) localStorage.setItem('refreshToken', refreshToken);
  }

  clearTokens() {
    this.token = null;
    this.refreshToken = null;
    localStorage.removeItem('accessToken');
    localStorage.removeItem('refreshToken');
    localStorage.removeItem('user');
  }

  async request(endpoint, options = {}) {
    const url = `${API_BASE}${endpoint}`;
    const headers = { 'Content-Type': 'application/json', ...options.headers };

    if (this.token) {
      headers['Authorization'] = `Bearer ${this.token}`;
    }

    const doFetch = async () => {
      const response = await fetch(url, { ...options, headers });
      const data = await response.json();
      if (!response.ok) throw { status: response.status, message: data.error || 'Request failed', code: data.code };
      return data;
    };

    try {
      return await doFetch();
    } catch (err) {
      if (err.status === 401 && this.refreshToken) {
        const refreshed = await this.refreshAccessToken();
        if (refreshed) {
          headers['Authorization'] = `Bearer ${this.token}`;
          try {
            return await doFetch();
          } catch (retryErr) {
            throw new Error(retryErr.message || 'Request failed');
          }
        }
        this.clearTokens();
        throw new Error('Session expired. Please login again.');
      }
      throw new Error(err.message || 'Request failed');
    }
  }

  async refreshAccessToken() {
    try {
      const response = await fetch(`${API_BASE}/auth/refresh`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ refreshToken: this.refreshToken })
      });
      const data = await response.json();
      if (response.ok) {
        this.setTokens(data.accessToken, data.refreshToken);
        return true;
      }
      return false;
    } catch {
      return false;
    }
  }

  get(endpoint, params = {}) {
    const query = new URLSearchParams(params).toString();
    const url = query ? `${endpoint}?${query}` : endpoint;
    return this.request(url, { method: 'GET' });
  }

  post(endpoint, body = {}) {
    return this.request(endpoint, { method: 'POST', body: JSON.stringify(body) });
  }

  put(endpoint, body = {}) {
    return this.request(endpoint, { method: 'PUT', body: JSON.stringify(body) });
  }

  delete(endpoint) {
    return this.request(endpoint, { method: 'DELETE' });
  }

  async uploadAvatar(file) {
    const formData = new FormData();
    formData.append('file', file);
    return this.request('/upload/avatar', {
      method: 'POST',
      headers: {},
      body: formData
    });
  }

  async login(username, password) {
    const data = await this.post('/auth/login', { username, password });
    this.setTokens(data.accessToken, data.refreshToken);
    localStorage.setItem('user', JSON.stringify(data.user));
    return data;
  }

  async register(username, email, password, displayName) {
    const data = await this.post('/auth/register', { username, email, password, displayName });
    this.setTokens(data.accessToken, data.refreshToken);
    localStorage.setItem('user', JSON.stringify(data.user));
    return data;
  }

  async logout() {
    try {
      await this.post('/auth/logout', { refreshToken: this.refreshToken });
    } catch {}
    this.clearTokens();
  }

  getCurrentUser() {
    const stored = localStorage.getItem('user');
    return stored ? JSON.parse(stored) : null;
  }

  isAuthenticated() {
    return !!this.token;
  }
}

const api = new ApiClient();