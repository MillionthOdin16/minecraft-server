FROM itzg/minecraft-server:latest

ENV EULA=TRUE
ENV VERSION=1.21.3
ENV TYPE=PURPUR

# JVM Flags - simplified for Java 25 compatibility
ENV JVM_FLAGS="-Xms4G -Xmx4G -XX:+UseG1GC"

# Optimized Settings
ENV VIEW_DISTANCE=8
ENV SIMULATION_DISTANCE=4
ENV MAX_PLAYERS=20

# Enable GeyserMC for Bedrock support
ENV ENABLE_GEYSER=true
ENV GEYSER_PORT=19132
ENV GEYSER_REMOTE_PORT=25565

# Download and install plugins during build
RUN mkdir -p /plugins && \
    curl -sL "https://ci.geysermc.org/job/GeyserMC/job/Geyser/job/master/lastSuccessfulBuild/artifact/bootstrap/spigot/Geyser-Spigot.jar" -o /plugins/Geyser-Spigot.jar && \
    curl -sL "https://ci.geysermc.org/job/Floodgate/job/Floodgate/job/master/lastSuccessfulBuild/artifact/spigot/Floodgate-Spigot.jar" -o /plugins/Floodgate-Spigot.jar && \
    echo "Downloaded GeyserMC and Floodgate plugins"

# Copy plugins from build
COPY --chmod=644 plugins/*.jar /plugins/

# Copy GeyserMC config
COPY --chmod=644 plugins/GeyserMC/config.yml /plugins/GeyserMC/config.yml

# Copy Floodgate config
COPY --chmod=644 plugins/Floodgate/config.yml /plugins/Floodgate/config.yml

# Copy GeyserMC public key for Floodgate
COPY --chmod=644 plugins/Floodgate/public.key /plugins/Floodgate/public.key

# Expose both Java and Bedrock ports
EXPOSE 25565 25565/udp 19132 19132/udp

CMD []
