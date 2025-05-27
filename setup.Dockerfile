FROM python:3.11-slim

RUN apt-get update && apt-get install -y \
    curl git docker.io nodejs npm bash unzip \
    && rm -rf /var/lib/apt/lists/*

# Install Poetry
RUN pip install poetry

# ✅ Install Supabase CLI (fixed)
RUN curl -sLo /usr/local/bin/supabase https://github.com/supabase/cli/releases/latest/download/supabase_linux_amd64 && \
    chmod +x /usr/local/bin/supabase

WORKDIR /app
