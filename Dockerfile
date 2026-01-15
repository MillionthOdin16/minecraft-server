FROM itzg/minecraft-server:latest

ENV EULA=TRUE
ENV VERSION=1.21.3
ENV TYPE=PURPUR

# Simple JVM Flags - compatible with itzg/minecraft-server image
ENV JVM_FLAGS="-Xms4G -Xmx4G -XX:+UseG1GC -XX:+ParallelRefProcEnabled"

# Optimized Settings
ENV VIEW_DISTANCE=8
ENV SIMULATION_DISTANCE=4
ENV MAX_PLAYERS=20

# Enable Geyser for Bedrock
ENV ENABLE_GEYSER=true
ENV GEYSER_PORT=19132

# Expose both Java and Bedrock ports
EXPOSE 25565 25565/udp 19132 19132/udp

# Use the image's default startup command
CMD []
