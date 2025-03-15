# Use the official n8n image
FROM n8nio/n8n:latest

# Set up environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=Fracspace@2024
ENV WEBHOOK_TUNNEL_URL=https://your-app-name.up.railway.app/
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true  

# Set correct permissions for n8n config folder
RUN mkdir -p /home/node/.n8n && chmod 700 /home/node/.n8n

# Expose port 5678
EXPOSE 5678

# Run n8n (fixes "command n8n not found")
CMD ["node", "/usr/local/lib/node_modules/n8n/bin/n8n"]
