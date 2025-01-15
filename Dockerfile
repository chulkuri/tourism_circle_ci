# Use a lightweight Node.js base image for http-server (even if you're not using a full Node.js app)
FROM node:alpine

# Copy the HTML, CSS, and other assets into the container
COPY ./ ./

# Install the http-server package globally
RUN npm install -g http-server

# Expose port 8081 (or any port you want the server to run on)
EXPOSE 8081

# Run http-server to serve the static files
CMD ["http-server", ".", "-p", "8081"]
