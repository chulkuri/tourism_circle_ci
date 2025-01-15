# Use a lightweight base image with Python to serve the static files
FROM python:3.9-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy all the website files to the working directory
COPY . /app

# Expose port 8000 for the HTTP server
EXPOSE 8000

# Start Python's built-in HTTP server to serve the static files
CMD ["python3", "-m", "http.server", "8000"]
