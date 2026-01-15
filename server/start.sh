#!/bin/bash
# Minecraft Server Start Script - Optimized for Purpur + Bedrock

# JVM Flags for Performance
JVM_FLAGS="-Xms4G -Xmx4G -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=50 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=15 -XX:InitiatingHeapOccupancyPercent=20"

# Start the server
java $JVM_FLAGS -jar purpur.jar nogui
