FROM python:3.10-slim

# Install curl and iputils-ping (for ping)
RUN apt-get update && \
    apt-get install -y curl iputils-ping && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy your application files
COPY . .

# Install any Python dependencies if you have a requirements.txt
# RUN pip install --no-cache-dir -r requirements.txt

# Command to run your application
CMD ["python", "your_script.py"]