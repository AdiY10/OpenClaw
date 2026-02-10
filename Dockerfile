FROM node:22-slim
RUN apt-get update && apt-get install -y curl git
RUN npm install -g openclaw@latest
WORKDIR /app
# OpenClaw's default Control UI port
EXPOSE 18789
CMD ["openclaw", "onboard", "--install-daemon"]
