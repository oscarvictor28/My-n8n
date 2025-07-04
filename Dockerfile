FROM n8nio/n8n
COPY health.js /usr/src/n8n/health.js
CMD ["node", "/usr/src/n8n/health.js"] && n8n start
