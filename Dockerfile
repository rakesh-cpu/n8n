# Use the official n8n image
FROM n8nio/n8n:latest

# Set up environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=Fracspace@2024
ENV WEBHOOK_TUNNEL_URL=${host}
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Set correct permissions for n8n settings
RUN mkdir -p /home/node/.n8n && chmod 700 /home/node/.n8n

# Fix possible PATH issue - Ensure n8n is accessible
RUN ln -sf /usr/local/bin/n8n /usr/bin/n8n

# Set work directory
WORKDIR /home/node

# Expose n8n default port
EXPOSE 5678

# Start n8n
CMD ["node", "/usr/local/lib/node_modules/n8n/bin/n8n"]
