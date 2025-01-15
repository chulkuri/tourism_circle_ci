# Use a lightweight Python base image
FROM python:3.9.18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy all the website files to the working directory
COPY . /app

# Install any missing packages (optional)
RUN apk add --no-cache bash

# Ensure proper permissions
RUN chmod -R 755 /app

# Expose port 8081 for the HTTP server
EXPOSE 8081

# Start Python's built-in HTTP server on port 8081
CMD ["python3", "-m", "http.server", "8081"]

