FROM node:22-slim

# Install system dependencies, including Python 3
RUN apt-get update && apt-get install -y \
    curl \
    git \
    python3 \
    python3-pip \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Create a symlink so 'python' points to 'python3'
RUN ln -s /usr/bin/python3 /usr/bin/python

# Install OpenClaw
RUN npm install -g openclaw@latest

WORKDIR /app

# OpenClaw's default Control UI port
EXPOSE 18789

# Run onboarding with the daemon
CMD ["openclaw", "onboard", "--install-daemon"]
