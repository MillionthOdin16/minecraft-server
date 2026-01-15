#!/bin/bash
# Minecraft Server Start Script - Optimized for Purpur + Bedrock

PLUGINS_DIR="$(dirname "$0")/plugins"
mkdir -p "$PLUGINS_DIR"

echo "🔌 Checking for GeyserMC plugins..."

# Download GeyserMC if not present or invalid
GEYSER_JAR="$PLUGINS_DIR/Geyser-Spigot.jar"
if [ ! -f "$GEYSER_JAR" ] || ! file "$GEYSER_JAR" 2>/dev/null | grep -q "Zip archive"; then
    echo "Downloading GeyserMC..."
    curl -sL -o "$GEYSER_JAR" "https://download.geysermc.org/v2/projects/geyser/versions/latest/builds/latest/download" &
    GEYSER_PID=$!
fi

# Download Floodgate if not present or invalid
FLOODGATE_JAR="$PLUGINS_DIR/Floodgate-Spigot.jar"
if [ ! -f "$FLOODGATE_JAR" ] || ! file "$FLOODGATE_JAR" 2>/dev/null | grep -q "Zip archive"; then
    echo "Downloading Floodgate..."
    curl -sL -o "$FLOODGATE_JAR" "https://download.geysermc.org/v2/projects/floodgate/versions/latest/builds/latest/download" &
    FLOODGATE_PID=$!
fi

# Wait for downloads
for pid in $GEYSER_PID $FLOODGATE_PID; do
    if [ -n "$pid" ] && kill -0 $pid 2>/dev/null; then
        wait $pid
    fi
done

# Verify downloads
echo "Verifying plugins..."
for jar in "$GEYSER_JAR" "$FLOODGATE_JAR"; do
    if [ -f "$jar" ]; then
        if file "$jar" 2>/dev/null | grep -q "Zip archive"; then
            echo "✅ $(basename $jar)"
        else
            echo "❌ $(basename $jar) - Invalid file type"
            rm -f "$jar"
        fi
    fi
done

# JVM Flags for Performance
JVM_FLAGS="-Xms4G -Xmx4G -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=50 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=15 -XX:InitiatingHeapOccupancyPercent=20"

echo "Starting Minecraft server..."
java $JVM_FLAGS -jar purpur.jar nogui
