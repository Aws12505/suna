FROM python:3.11-slim

RUN apt-get update && apt-get install -y \
    curl git docker.io nodejs npm bash unzip \
    && rm -rf /var/lib/apt/lists/*

# Install Poetry
RUN pip install poetry

# ✅ Install Supabase CLI (fixed)
RUN curl -sL --fail https://github.com/supabase/cli/releases/download/v2.23.4/supabase_2.23.4_linux_amd64.deb -o supabase.deb && \
    dpkg -i supabase.deb && \
    rm supabase.deb && \
    supabase --version

# Install Docker Compose v2 standalone
RUN curl -SL https://github.com/docker/compose/releases/download/v2.27.0/docker-compose-linux-x86_64 \
  -o /usr/local/bin/docker-compose && \
  chmod +x /usr/local/bin/docker-compose && \
  ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose



WORKDIR /app
