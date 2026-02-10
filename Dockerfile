FROM node:22-slim

RUN apt-get update && apt-get install -y \
    curl \
    git \
    python3 \
    python3-pip \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

RUN ln -s /usr/bin/python3 /usr/bin/python
RUN npm install -g openclaw@latest

WORKDIR /app

# OpenClaw's default Control UI port
EXPOSE 18789

# Force start the gateway directly without interactive prompts
CMD ["openclaw", "gateway", "start", "--port", "8080"]
