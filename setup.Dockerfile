FROM python:3.11-slim

RUN apt-get update && apt-get install -y \
    curl git docker.io nodejs npm bash unzip \
    && rm -rf /var/lib/apt/lists/*

# Install poetry
RUN pip install poetry

# Install Supabase CLI
RUN curl -sL https://github.com/supabase/cli/releases/latest/download/supabase-cli-linux-amd64.tar.gz \
  | tar -xz -C /usr/local/bin supabase

WORKDIR /app
