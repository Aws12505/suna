# setup.Dockerfile
FROM python:3.11-slim

# Install system dependencies needed by the setup script
RUN apt-get update && apt-get install -y \
    git curl docker.io nodejs npm \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
RUN pip install poetry

# Set working directory
WORKDIR /app

# Default command overridden by docker-compose entrypoint
ENTRYPOINT ["python3"]
