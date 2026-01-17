# Plugin Download - Manual Required

Automated downloads are blocked by the GeyserMC download server. Manual download required.

## Download Links

### GeyserMC (Bedrock support)
1. Go to: https://download.geysermc.org/
2. Download the latest Spigot JAR
3. Save as: `server/plugins/Geyser-Spigot.jar`

### Floodgate (Bedrock authentication)
1. Go to: https://download.geysermc.org/
2. Download the latest Floodgate Spigot JAR
3. Save as: `server/plugins/Floodgate-Spigot.jar`

## After Downloading

```bash
cd /home/opc/clawd/minecraft-server
git add server/plugins/*.jar
git commit -m "Add GeyserMC plugins"
git push
```

Then restart the server in Coolify to load the plugins.

## Verify Plugins

After server restarts, check logs for:
```
[PluginInitializerManager] Initialized X plugins
[geyser] GeyserMC connected
```
