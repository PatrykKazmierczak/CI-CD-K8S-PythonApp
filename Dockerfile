# # Use the official Python image as a parent image
# FROM python:3.8

# # Set environment variables for Python
# ENV PYTHONDONTWRITEBYTECODE 1
# ENV PYTHONUNBUFFERED 1

# # Set the working directory in the container
# WORKDIR /app

# # Copy the project files into the container
# COPY . /app/

# # Install project dependencies
# RUN pip install -r requirements.txt

# # Expose port 8000
# EXPOSE 8000

# # Start the Django application
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

# Use the official Python image as a parent image
FROM python:3.8

# Set environment variables for Python
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /app

# Copy the project files into the container
COPY . /app/

# Install project dependencies
RUN pip install -r requirements.txt

# Install SQLite database
RUN apt-get update && apt-get install -y sqlite3

# Create a directory for SQLite database
RUN mkdir -p /app/data/sqlite

# Initialize SQLite database file
RUN sqlite3 /app/data/sqlite/db.sqlite3 ""

# Expose port 8000
EXPOSE 8000

# Start the Django application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
