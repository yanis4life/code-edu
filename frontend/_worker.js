import { handleRequest } from '../api/server';

export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);

    if (url.pathname.startsWith('/api/')) {
      request.env = env;
      return handleRequest(request);
    }

    return env.ASSETS.fetch(request);
  }
};