FROM itzg/minecraft-server:latest

# Accept EULA
ENV EULA=TRUE

# Version and Type
ENV VERSION=1.21.3
ENV TYPE=PURPUR

# JVM Flags for Performance
ENV JVM_FLAGS="-Xms4G -Xmx4G -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=50 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=15 -XX:InitiatingHeapOccupancyPercent=20"

# Optimized Settings
ENV VIEW_DISTANCE=8
ENV SIMULATION_DISTANCE=4
ENV MAX_PLAYERS=20

# Enable Geyser for Bedrock
ENV ENABLE_GEYSER=true
ENV GEYSER_PORT=19132

# Expose ports
EXPOSE 25565 25565/udp 19132 19132/udp

# Run
CMD ["java", "-Xms4G", "-Xmx4G", "-XX:+UseG1GC", "-jar", "server.jar", "nogui"]
