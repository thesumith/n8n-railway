FROM docker.n8n.io/n8nio/n8n:latest

ENV N8N_HOST=0.0.0.0
EXPOSE 5678

# Railway injects PORT; n8n must listen on that port
CMD ["sh", "-c", "export N8N_PORT=${PORT:-5678} && exec n8n"]
