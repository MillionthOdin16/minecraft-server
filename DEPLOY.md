# Minecraft Server - Coolify Deployment Guide

## Step 1: Create Application in Coolify UI

1. Open Coolify Dashboard: http://localhost:8000
2. Click "New Project" or use existing
3. Click "Create New Application"
4. Fill in:
   - **Name:** Minecraft Server
   - **Repository:** https://github.com/MillionthOdin16/minecraft-server
   - **Branch:** main
   - **Build Pack:** Java (Minecraft)

## Step 2: Configure Settings

### General
- **Java Version:** 21
- **Build Command:** (leave default)
- **Start Command:** ./start.sh

### Environment Variables
Add these in the Environment Variables section:

```
SERVER_PORT=25565
VERSION=1.21.3
TYPE=PURPUR
JVM_FLAGS=-Xms4G -Xmx4G -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=50 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=15 -XX:InitiatingHeapOccupancyPercent=20
```

### Resources
- **Memory:** 4096 MB (4GB)
- **CPU:** 200% (2 cores recommended)

### Ports
- Add port: `25565` (TCP)

## Step 3: Deploy

1. Click "Save & Deploy"
2. Wait for build (downloads PurpurMC JAR)
3. Server will start automatically

## Step 4: Install Plugins

After first startup, the server will create a `plugins` folder. Download and add:

1. **GeyserMC** (Bedrock support)
   - Download: https://ci.geysermc.org
   - Place in: /home/opc/clawd/minecraft-server/server/plugins/

2. **Floodgate** (Bedrock auth)
   - Download: https://ci.geysermc.org
   - Place in: /home/opc/clawd/minecraft-server/server/plugins/

3. **Lithium** (performance)
   - Download: https://github.com/CaffeineMC/lithium/releases

4. **Starlight** (lighting)
   - Download: https://github.com/PaperMC/Starlight/releases

5. **Spark** (profiler)
   - Download: https://github.com/lucko/spark/releases

## Step 5: Configure Geyser (Bedrock)

Edit `plugins/GeyserMC/config.yml`:

```yaml
bedrock:
  port: 19132
  clone-commands: true

remote:
  address: 127.0.0.1
  port: 25565
  auth-type: online
```

## Step 6: Connect

- **Java Edition:** `your-server-ip:25565`
- **Bedrock Edition:** `your-server-ip:19132` (UDP)

## Recommended Domain
- `mc.bradarr.com` or `minecraft.bradarr.com`

## Useful Commands

In-game admin commands:
- `/geyserproxy status` - Check Geyser status
- `/spark server` - Profile server performance
- `/lp reload` - LuckPerms reload (if installed)
