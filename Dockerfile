# Use an official Python runtime as a base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the entire current directory contents into the container at /app
COPY . .

# Expose port 8000 to allow external access
EXPOSE 8000

# Run Python's built-in HTTP server for serving static content
CMD ["python", "-m", "http.server", "8000"]
