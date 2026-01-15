#!/bin/bash
# Download Minecraft plugins - VERIFIED WORKING URLs

PLUGINS_DIR="$(dirname "$0")"
cd "$PLUGINS_DIR"

echo "🔌 Downloading GeyserMC (Bedrock support)..."
curl -sL -o Geyser-Spigot.jar \
  "https://download.geysermc.org/v2/projects/geyser/versions/latest/builds/latest/download" \
  || echo "❌ Geyser download failed"

echo "🔐 Downloading Floodgate (Bedrock auth)..."
curl -sL -o Floodgate-Spigot.jar \
  "https://download.geysermc.org/v2/projects/floodgate/versions/latest/builds/latest/download" \
  || echo "❌ Floodgate download failed"

echo "🌿 Downloading Weed plugin..."
curl -sL -o weed-1.0.3.jar \
  "https://github.com/Compagnie-Hydromel/minecraft-weed-plugin/releases/latest/download/WeedPlugin.jar" \
  || echo "❌ Weed download failed"

echo ""
echo "✅ Verifying downloads..."
for jar in *.jar; do
  if [ -f "$jar" ]; then
    FILE_TYPE=$(file "$jar" 2>/dev/null)
    if echo "$FILE_TYPE" | grep -q "Zip archive"; then
      echo "  ✅ $jar"
    else
      echo "  ❌ $jar - NOT A JAR FILE (got: $FILE_TYPE)"
      rm -f "$jar"
    fi
  fi
done

echo ""
echo "📋 To download plugins manually:"
echo "   GeyserMC: https://download.geysermc.org/"
echo "   Floodgate: https://download.geysermc.org/"
echo "   Weed: https://github.com/Compagnie-Hydromel/minecraft-weed-plugin/releases"
