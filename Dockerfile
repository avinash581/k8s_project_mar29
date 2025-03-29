# Use the official Ubuntu and Nginx image as the base image
FROM ubuntu/nginx:latest

# Set environment variables if needed (optional)
ENV NGINX_HOST=localhost

# Install any additional packages (if needed)
RUN apt-get update && apt-get install -y \
    curl \
    vim \
    && rm -rf /var/lib/apt/lists/*

# Copy your custom Nginx configuration file into the container
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
