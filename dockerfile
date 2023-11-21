# Use the official Nginx base image
FROM nginx:latest

# Copy your local Nginx configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy your web content to the default Nginx document root
COPY html /usr/share/nginx/html

# Expose the default Nginx port
EXPOSE 80

# Command to start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
