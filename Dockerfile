# Use the official Python image (alpine version is lightweight)
FROM python:alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the HTML, CSS, and other assets into the container
COPY ./ ./

# Install the http-server package globally
RUN npm install -g http-server

# Expose port 8081 (or any port you want the server to run on)
EXPOSE 8081

# Run http-server to serve the static files
CMD ["http-server", ".", "-p", "8081"]
