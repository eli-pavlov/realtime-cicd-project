# Stage 1: Build dependencies (slim image)
FROM python:3.9-slim AS builder

# Set working directory
WORKDIR /app

# Install Flask
RUN pip install --no-cache-dir Flask

# Stage 2: Copy application code (smaller image)
FROM python:3.9-alpine

# Set working directory
WORKDIR /app

# Create the templates directory
RUN mkdir /app/templates

# Copy application code and templates
COPY src/ .  # Copies entire directory structure
COPY templates/ .  # Copies entire templates directory

# Expose the Flask port
EXPOSE 5000

# Define command to run the app
CMD ["python", "app.py"]
