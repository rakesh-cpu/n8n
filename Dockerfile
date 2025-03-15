# Use the official n8n image
FROM n8nio/n8n:latest

# Set up environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=Fracspace@2024
ENV WEBHOOK_TUNNEL_URL=https://your-app-name.up.railway.app/

# Expose port 5678
EXPOSE 5678

# Command to run n8n
CMD ["n8n"]
