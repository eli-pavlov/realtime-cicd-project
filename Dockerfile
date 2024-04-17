# Use an official Python runtime as a parent image
FROM python:3.9-alpine

# Set the working directory in the container
WORKDIR /app

# Create the templates directory
RUN mkdir /app/templates

# Copy the Flask app code and templates into the container
COPY src/app.py /app/app.py
COPY templates/ /app/templates/

# Copy pre-built dependencies (or use a multi-stage build)
# COPY requirements.txt /app/requirements.txt
# RUN pip install --no-cache-dir -r requirements.txt

# Expose the Flask port
EXPOSE 5000

# Define the command to run the Flask app when the container starts
CMD ["python", "app.py"]
