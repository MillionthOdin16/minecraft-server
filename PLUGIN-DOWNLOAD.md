# Manual Plugin Download Required

The automatic download script may not work due to API restrictions. Download these plugins manually:

## Required for Bedrock Support

### GeyserMC (Bedrock → Java translation)
1. Go to: https://download.geysermc.org/
2. Click "Download" for latest version
3. Download: **GeyserSpigot.jar** (not standalone!)
4. Place in: `server/plugins/Geyser-Spigot.jar`

### Floodgate (Bedrock authentication)
1. Go to: https://download.geysermc.org/
2. Find "Floodgate" and download latest version
3. Download: **floodgate-spigot.jar**
4. Place in: `server/plugins/Floodgate-Spigot.jar`

## Already Included
- ✅ WeedPlugin (weed-1.0.3.jar) - Fun plugin
- ✅ JJTheme (custom spawn/economy/worldgen)

## After Download
1. Verify files are actual JARs:
   ```bash
   file server/plugins/*.jar
   # Should show: "Zip archive data"
   # NOT: "HTML document" or "ASCII text"
   ```
2. Commit and push to GitHub
3. Redeploy in Coolify
4. Check logs for: `[PluginInitializerManager] Initialized X plugins`
