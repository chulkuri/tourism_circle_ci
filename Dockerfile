# Use the official Python image (alpine version is lightweight)
FROM python:alpine

# Install Node.js and npm
RUN apk add --no-cache nodejs npm

# Install http-server globally
RUN npm install -g http-server

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy your HTML, CSS, and other assets into the container
COPY ./ ./

# Expose the port on which the server will run (default is 8080)
EXPOSE 8080

# Start the HTTP server using http-server
CMD ["http-server", ".", "-p", "8080"]

