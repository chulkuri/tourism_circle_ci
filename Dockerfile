FROM python:3.9-alpine
WORKDIR /app
COPY . /app
EXPOSE 8081
CMD ["python3", "-m", "http.server", "8081"]
