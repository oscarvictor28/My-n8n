FROM n8nio/n8n

# Copy the health check script
COPY health.js /usr/src/n8n/health.js

# Use a shell script to run both health check and n8n
CMD sh -c "node /usr/src/n8n/health.js & n8n start"
