# Use the official Nginx base image
FROM nginx:latest

# Copy custom configuration file to the Nginx configuration directory
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
