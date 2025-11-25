# Use official Nginx image as base
FROM nginx:alpine

# Set working directory inside container
WORKDIR /usr/share/nginx/html

# Remove default Nginx static files
RUN rm -rf ./*

# Copy website files into container
COPY . .

# Expose port 80
EXPOSE 80

# Nginx runs automatically with default CMD
