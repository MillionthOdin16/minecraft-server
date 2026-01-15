# Minecraft Server Research - Coolify Deployment

## Recommended Server Software

### PurpurMC (Best Choice)
- **Why:** Drop-in replacement for Paper, highly optimized, built-in Bedrock support settings
- **Link:** https://purpurmc.org
- **Version:** 1.21.3 (latest stable)

## Essential Plugins for Bedrock + Performance

### Bedrock Compatibility (REQUIRED)
1. **GeyserMC** - Bridge allowing Bedrock clients to connect
   - https://ci.geysermc.org
   - Version: Latest for 1.21.x
   
2. **Floodgate** - Required for Geyser on online-mode servers
   - https://ci.geysermc.org
   - Prevents Bedrock players from impersonating Java players

### Performance Optimization
3. **Lithium** - General performance improvements
   - https://github.com/CaffeineMC/lithium
   - Minimal CPU usage, big performance gains
   
4. **Starlight** - Rewritten lighting engine (100x faster)
   - https://github.com/PaperMC/Starlight
   
5. **Spark** - Performance profiler
   - https://github.com/lucko/spark
   - Diagnose lag spikes

### Quality of Life
6. **ViaVersion** - Allow newer clients on older servers
7. **CoreProtect** - Rollback and logging
8. **Plan** - Player analytics dashboard

## JVM Optimization Flags

```
-Xms4G -Xmx4G
-XX:+UseG1GC
-XX:+ParallelRefProcEnabled
-XX:MaxGCPauseMillis=200
-XX:+UnlockExperimentalVMOptions
-XX:G1NewSizePercent=30
-XX:G1MaxNewSizePercent=50
-XX:G1HeapRegionSize=8M
-XX:G1ReservePercent=15
-XX:InitiatingHeapOccupancyPercent=20
```

## server.properties Optimization

```
view-distance=8
simulation-distance=4
max-players=20
spawn-protection=0
difficulty=normal
hardcore=false
allow-flight=true
white-list=false
```

## Coolify Configuration

- **Build Pack:** Java (Minecraft)
- **Port:** 25565 (default)
- **Memory:** 4GB recommended
- **Environment Variables:**
  - SERVER_PORT=25565
  - VERSION=1.21.3
  - TYPE=PURPUR
  - JVM_FLAGS=...
