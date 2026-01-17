# GeyserMC Download Options for Minecraft Bedrock

## Quick Summary
GeyserMC requires manual download because their API doesn't expose direct download URLs programmatically.

## Option 1: Manual Download (Recommended)
1. Go to: https://download.geysermc.org/
2. Click "Download" for Geyser
3. Download these files:
   - `Geyser-Standalone.jar` (for standalone/Bukkit/Spigot)
   - `floodgate-Spigot.jar` (for Bedrock players on online mode servers)
4. Place in: `minecraft-server/server/plugins/`
5. Commit and redeploy

## Option 2: Browser Automation
From a machine with Chrome:
1. Open https://download.geysermc.org/
2. Use DevTools Network tab to capture the actual download URL
3. The URL pattern is likely: `https://download.geysermc.org/v2/...`

## Option 3: Alternative Repositories
Try these if accessible:
- Maven Central: https://repo1.maven.org/maven2/org/geysermc/
- JitPack: https://jitpack.io/org/geysermc/geyserdiscordbot/
- GitHub Actions: Download from CI artifacts

## Current Research (2026-01-16)
- ✅ API accessible but returns metadata only
- ✅ Latest version: 2.9.2 (Build 1035)
- ✅ File SHA256 hashes available
- ❌ Direct download URLs NOT exposed
- ❌ Page uses JavaScript rendering

## Files Needed
```
Geyser-Standalone.jar      (main Geyser proxy)
floodgate-Spigot.jar       (Bedrock auth bridge)
```

## After Download
```bash
cd /home/opc/clawd/minecraft-server
# Place JARs in server/plugins/
git add .
git commit -m "Add GeyserMC and Floodgate plugins"
git push
# Coolify will auto-redeploy
```

## Verification
Check Bedrock connectivity on port 19132 after deployment.
