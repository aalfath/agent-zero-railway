# Agent Zero — Railway template
# Uses the official prebuilt image for reliable, fast builds.
FROM agent0ai/agent-zero:latest

# The web UI listens on port 80 by default.
EXPOSE 80

# IMPORTANT: attach a Railway volume at /a0/usr so settings, memory, projects,
# chats and uploads persist across redeploys. Do NOT mount /a0 (it holds app
# code and mounting it breaks upgrades). The volume is configured in the Railway
# template, not here.
