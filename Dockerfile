# Use the official n8n image
FROM n8nio/n8n:latest

# Set up environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=Fracspace@2024
ENV WEBHOOK_TUNNEL_URL=https://your-app-name.up.railway.app/
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Fix permissions issue
RUN mkdir -p /home/node/.n8n && chmod 700 /home/node/.n8n

# Fix PATH issue - Ensures n8n runs
RUN ln -s /usr/local/bin/n8n /usr/bin/n8n

# Expose port 5678
EXPOSE 5678

# Start n8n
CMD ["n8n"]
