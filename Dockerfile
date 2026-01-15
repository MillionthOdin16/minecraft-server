FROM itzg/minecraft-server:latest

ENV EULA=TRUE
ENV VERSION=1.21.3
ENV TYPE=PURPUR

# Simple JVM flags
ENV JVM_FLAGS="-Xms4G -Xmx4G -XX:+UseG1GC"

# Optimized settings
ENV VIEW_DISTANCE=8
ENV SIMULATION_DISTANCE=4
ENV MAX_PLAYERS=20

# GeyserMC for Bedrock - itzg image handles this automatically
ENV ENABLE_GEYSER=true
ENV GEYSER_PORT=19132

# Expose ports
EXPOSE 25565 19132

# Use default CMD from image
CMD []
