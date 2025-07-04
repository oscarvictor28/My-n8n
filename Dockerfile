FROM n8nio/n8n

USER root

RUN apt-get update && apt-get install -y bash

COPY health.js /usr/src/n8n/health.js

CMD ["bash", "-c", "node /usr/src/n8n/health.js & n8n start"]
