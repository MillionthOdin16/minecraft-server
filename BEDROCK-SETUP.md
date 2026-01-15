# Bedrock Compatibility - Quick Reference

## Connection Info

| Edition | Address | Port | Protocol |
|---------|---------|------|----------|
| **Java** | `mc.bradarr.com` | `25565` | TCP |
| **Bedrock** | `mc.bradarr.com` | `19132` | UDP |

## How It Works

1. Bedrock player connects to port 19132 (UDP)
2. GeyserMC translates Bedrock protocol to Java
3. Both Java and Bedrock players play together!

## Required Firewall Ports

- `25565` TCP/UDP - Java Edition
- `19132` UDP - **Bedrock Edition (critical!)**

## Admin Commands

- `/geyserproxy status` - Check Geyser status
- `/geyserproxy reload` - Reload Geyser config
- `/floodgate register <player>` - Register Bedrock link
- `/floodgate unregister <player>` - Unregister link

## Troubleshooting

**"Cannot connect to world":**
- Verify port 19132 is open (UDP!)
- Check `/geyserproxy status`

**Bedrock shows "Invalid IP":**
- Enable `enable-raw-ip-forwarding` on server
- Firewall must allow UDP 19132

**Cloudflare users:**
- UDP 19132 must bypass Cloudflare

## Already Configured ✅

GeyserMC and Floodgate are pre-installed in `server/plugins/`
