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

# GeyserMC for Bedrock
ENV ENABLE_GEYSER=true
ENV GEYSER_PORT=19132

# Install plugins using PLUGINS env var (comma-separated URLs)
ENV PLUGINS="https://download.geysermc.org/v2/projects/geyser/versions/latest/builds/latest/download,https://download.geysermc.org/v2/projects/floodgate/versions/latest/builds/latest/download"

# Expose ports
EXPOSE 25565 19132

# Use default CMD from image
CMD []
