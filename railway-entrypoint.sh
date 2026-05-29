#!/bin/sh
set -e

# Railway volumes mount as root; n8n runs as node
chown -R node:node /home/node/.n8n 2>/dev/null || true

export N8N_PORT="${PORT:-5678}"
export N8N_HOST="${N8N_HOST:-0.0.0.0}"

exec su-exec node /docker-entrypoint.sh
