# Manual Coolify Setup Guide

Since the Coolify API is not accessible from this session, please follow these steps manually:

## Step 1: Access Coolify Dashboard

1. Go to: https://coolify.bradarr.com
2. Login with your credentials

## Step 2: Create New Project

1. Click "New Project" 
2. Name: "Minecraft" or similar
3. Click "Save"

## Step 3: Create Application

1. Click "Create New Application" within your project
2. Fill in:
   - **Name:** Minecraft Server
   - **Repository:** `https://github.com/MillionthOdin16/minecraft-server`
   - **Branch:** `main`
   - **Build Pack:** (leave as Auto-detect or try "Java")
   
3. Click "Continue"

## Step 4: Configure Settings

### Resources Tab
- **Memory:** 4096 MB (4GB)
- **CPU:** 200% (2 cores)
- **Build Pack:** Java (Minecraft)

### Environment Variables
Add these:

```
SERVER_PORT=25565
VERSION=1.21.3
TYPE=PURPUR
JVM_FLAGS=-Xms4G -Xmx4G -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=50 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=15 -XX:InitiatingHeapOccupancyPercent=20
```

### Ports
- Add port: `25565` (TCP) - for Java Edition
- Add port: `19132` (UDP) - for Bedrock Edition

## Step 5: Deploy

1. Click "Save & Deploy"
2. Wait for build (first time downloads PurpurMC ~50MB)
3. Server will start automatically

## Step 6: Install Plugins (After First Startup)

After the server starts for the first time, it will create a `plugins` folder. Then:

1. Download plugins:
   - GeyserMC: https://ci.geysermc.org
   - Floodgate: https://ci.geysermc.org  
   - Lithium: https://github.com/CaffeineMC/lithium/releases
   - Starlight: https://github.com/PaperMC/Starlight/releases
   - Spark: https://github.com/lucko/spark/releases

2. Place JAR files in: `/home/opc/clawd/minecraft-server/server/plugins/`

3. Restart server

## Step 7: Connect

- **Java Edition:** `coolify.bradarr.com:25565`
- **Bedrock Edition:** `coolify.bradarr.com:19132` (UDP)

## Domain Suggestion

Add a CNAME record:
- `mc.bradarr.com` → coolify.bradarr.com

## Server Commands

In-game admin:
- `/geyserproxy status` - Check Bedrock proxy
- `/spark server` - Profile performance
- `/stop` - Save and stop server

## Files Already Ready

All configuration files are in the GitHub repo:
- `server.properties` - Optimized settings
- `purpur.yml` - Purpur config
- `start.sh` - Startup script
- `docker-compose.yml` - Docker alternative

Good luck! 🎮
