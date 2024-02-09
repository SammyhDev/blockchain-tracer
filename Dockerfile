# Use the official CentOS 7 base image
FROM centos:7

# Update and install Nginx
RUN yum update -y
RUN yum install -y epel-release
RUN yum install -y nginx

# Set the working directory to where Nginx serves files
WORKDIR /usr/share/nginx/html

# Copy the contents of the local directory into the container
COPY . .

# Expose port 80 for Nginx
EXPOSE 80/tcp

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
