# setup.Dockerfile
FROM python:3.11-slim

# Install tools needed for setup
RUN apt-get update && apt-get install -y \
    curl git docker.io nodejs npm bash \
    && rm -rf /var/lib/apt/lists/*

# Install Poetry (backend dependency manager)
RUN pip install poetry

# Create working dir
WORKDIR /app
