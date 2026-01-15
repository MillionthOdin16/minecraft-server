# Use docker-compose to run Minecraft server
FROM docker:latest

WORKDIR /app

# Install docker-compose
RUN apk add docker-compose-v2 git

# Copy files
COPY . .

# Create data directory
RUN mkdir -p /data

# Expose ports
EXPOSE 25565 19132

# Default command
CMD ["docker-compose", "up", "-d"]
