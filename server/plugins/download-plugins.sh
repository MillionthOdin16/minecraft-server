#!/bin/bash
# Download weed and roleplay plugins

PLUGINS_DIR="$(dirname \"$0\")\"

echo "Downloading weed plugin..."
# Download from GitHub releases
curl -sL "https://github.com/Compagnie-Hydromel/minecraft-weed-plugin/releases/latest/download/WeedPlugin.jar" \
  -o "$PLUGINS_DIR/WeedPlugin.jar" 2>/dev/null && echo "✅ WeedPlugin.jar" || echo "❌ Failed to download WeedPlugin"

echo "Downloading additional roleplay plugins..."
# Download other fun plugins
curl -sL "https://github.com/IntellectualSites/PlotSquared/releases/download/v3.0.0/PlotSquared-3.0.0.jar" \
  -o "$PLUGINS_DIR/PlotSquared.jar" 2>/dev/null && echo "✅ PlotSquared" || echo "PlotSquared download failed"

echo ""
echo "Done! Restart server to load plugins."
