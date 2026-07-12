# Agent Zero — Railway Template

Deploy [Agent Zero](https://github.com/agent0ai/agent-zero) on [Railway](https://railway.com) with a persistent volume and mandatory login credentials.

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/new?template=https://github.com/aalfath/agent-zero-railway)

> Agent Zero is an open-source, autonomous AI agent framework that runs in Docker, with a web UI, tools, memory, and browser and terminal capabilities.

## What this template deploys

- One service running the official `agent0ai/agent-zero` image
- The Agent Zero web UI on port `80`
- A persistent volume mounted at `/a0/usr`

## Deploy

1. Click **Deploy on Railway** above.
2. Set the required `AUTH_LOGIN` and `AUTH_PASSWORD` environment variables.
3. Confirm that a persistent volume is attached at `/a0/usr`.
4. Open the application URL and log in with the credentials you configured.
5. Configure your LLM provider inside the Agent Zero **Settings** UI.

## Environment Variables

| Variable | Required | Description |
| --- | --- | --- |
| `AUTH_LOGIN` | Yes | Username for the Agent Zero web UI. |
| `AUTH_PASSWORD` | Yes | Password for the Agent Zero web UI. |

LLM provider API keys and model selection are configured inside the **Settings** UI after login.

## Persistence

The `/a0/usr` directory contains `settings.json`, `memory/`, `projects/`, `chats/`, and `uploads/`. Attach the Railway volume at this exact path to preserve Agent Zero data across redeploys.

Do **not** mount `/a0`. It contains the application code, and mounting it breaks upgrades.

## Run locally

```bash
docker build -t agent-zero-railway .
docker run --rm -p 80:80 -v agent-zero-usr:/a0/usr -e AUTH_LOGIN=admin -e AUTH_PASSWORD=changeme agent-zero-railway
```

Open http://localhost:80 and log in with `admin` / `changeme`.

## Credits

- [Agent Zero](https://github.com/agent0ai/agent-zero)
- [agent0ai](https://github.com/agent0ai)
