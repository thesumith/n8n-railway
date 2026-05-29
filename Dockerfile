FROM docker.n8n.io/n8nio/n8n:latest

USER root
RUN apk add --no-cache su-exec

COPY railway-entrypoint.sh /railway-entrypoint.sh
RUN chmod +x /railway-entrypoint.sh

ENV N8N_HOST=0.0.0.0
EXPOSE 5678

ENTRYPOINT ["tini", "--", "/railway-entrypoint.sh"]
