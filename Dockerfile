# Use an official Python runtime as a parent image
FROM python:3.12

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set environment variables (update as needed)
ENV PYTHONUNBUFFERED=1

# Command to run the application
CMD ["python", "main.py"]
