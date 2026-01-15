FROM itzg/minecraft-server:latest

ENV EULA=TRUE
ENV VERSION=1.21.3
ENV TYPE=PURPUR

# JVM flags  
ENV JVM_FLAGS="-Xms4G -Xmx4G -XX:+UseG1GC -XX:+ParallelRefProcEnabled"

# Optimized settings
ENV VIEW_DISTANCE=8
ENV SIMULATION_DISTANCE=4
ENV MAX_PLAYERS=20

# GeyserMC for Bedrock - use specific version compatible with 1.21.3
ENV ENABLE_GEYSER=true
ENV GEYSER_VERSION=2.8.0
ENV GEYSER_PORT=19132
ENV GEYSER_REMOTE_ADDRESS=127.0.0.1
ENV GEYSER_REMOTE_PORT=25565

# Expose ports
EXPOSE 25565 19132

# Use default CMD from image
CMD []
