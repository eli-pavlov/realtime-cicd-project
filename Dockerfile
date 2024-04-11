# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Install apache
RUN apt install apache2 -y

# Copy the Flask app code into the container
COPY app.py /app/
COPY templates /app/templates/

# Install Flask
RUN pip install --no-cache-dir Flask

# Expose the Flask port
EXPOSE 5000

# Define the command to run the Flask app when the container starts
CMD ["python", "app.py"]
