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
   - **Build Pack:** Java (Minecraft)
   
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

### Ports (IMPORTANT - Bedrock Support)
- Add port: `25565` (TCP/UDP) - for Java Edition
- Add port: `19132` (UDP) - for Bedrock Edition (critical!)

## Step 5: Deploy

1. Click "Save & Deploy"
2. Wait for build (first time downloads PurpurMC ~50MB)
3. Server will start automatically

## Step 6: Connect

**Java Edition (PC/Mac):**
- Address: `coolify.bradarr.com` or `<your-ip>:25565`
- Port: `25565`

**Bedrock Edition (Mobile/Xbox/PS/Nintendo Switch):**
- Address: `coolify.bradarr.com` or `<your-ip>`
- Port: `19132` (UDP - must be open!)

## Plugins Already Installed ✅

These plugins are already in the repo and will be loaded on first startup:

| Plugin | Purpose |
|--------|---------|
| **GeyserMC** | Bedrock-to-Java protocol translation |
| **Floodgate** | Bedrock player authentication |
| **JJTheme** | Custom spawn, economy, worldgen |
| **Lithium** | Performance optimization |
| **Starlight** | Faster lighting engine |
| **Spark** | Performance profiling |

## Commands

In-game admin:
- `/geyserproxy status` - Check Bedrock proxy
- `/spark server` - Profile performance
- `/stop` - Save and stop server

## Domain Suggestion

Add a CNAME record:
- `mc.bradarr.com` → coolify.bradarr.com

## Troubleshooting Bedrock

**"Cannot connect to world" error:**
- Verify port 19132 is open (UDP, not just TCP!)
- Check that GeyserMC is loaded: `/geyserproxy status`

**Bedrock player shows "Invalid IP":**
- Check that `enable-raw-ip-forwarding` is enabled
- Verify network firewall allows UDP on 19132

**Cloudflare users:**
- UDP port 19132 must bypass Cloudflare (UDP not supported)
- Use direct IP or TCP/UDP tunnel for Bedrock

## What's Already Ready

All configuration files are in the GitHub repo:
- `server/plugins/GeyserMC/config.yml` - Bedrock proxy config
- `server/plugins/Floodgate/config.yml` - Bedrock auth
- `server/server.properties` - Server settings
- `server/purpur.yml` - PurpurMC config
- `server/start.sh` - Startup script
- `docker-compose.yml` - Docker alternative

Good luck! 🎮
