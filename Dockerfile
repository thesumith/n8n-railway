FROM docker.n8n.io/n8nio/n8n:latest

USER root
ENV N8N_HOST=0.0.0.0
EXPOSE 5678

# Fix Railway volume permissions, bind to PORT, run as node user
CMD ["sh", "-c", "chown -R node:node /home/node/.n8n 2>/dev/null || true; exec su -s /bin/sh node -c 'export N8N_PORT=${PORT:-5678}; exec n8n'"]
