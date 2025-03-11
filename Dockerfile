# Use an official Python runtime as a parent image
FROM python:3.12

# Set the working directory in the container
WORKDIR /app

# Copy the project files into the container
COPY . .

# Ensure the config directory exists and move the config file there
RUN mkdir -p /app/config && cp /app/config.example.toml /app/config/config.toml

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Command to run the application
CMD ["python", "main.py"]
