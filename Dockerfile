# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the 'fast-api' folder into the container's /app directory
COPY app/ /app

# Install dependencies
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8000
EXPOSE 8000
CMD ["python" , "app.py"]
