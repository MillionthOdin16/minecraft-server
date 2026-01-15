# Bedrock Compatibility Setup

## Connecting to the Server

### Java Edition (PC/Mac)
- Server Address: `mc.bradarr.com` or `<your-ip>:25565`
- Port: `25565` (default)

### Bedrock Edition (Mobile/Xbox/PS/Nintendo Switch)
- Server Address: `mc.bradarr.com` or `<your-ip>`
- Port: `19132` (UDP **required**)
- Bedrock Edition default port is 19132

## How GeyserMC Works

1. Bedrock player connects to port 19132 (UDP)
2. GeyserMC translates Bedrock protocol to Java protocol
3. Player connects to Java server through Geyser proxy
4. Both Java and Bedrock players can play together!

## Required Ports (Firewall)
- `25565` TCP/UDP - Java Edition
- `19132` UDP - **Bedrock Edition (critical!)**

## Troubleshooting Bedrock Connection

### "Cannot connect to world" error
- Verify port 19132 is open (UDP, not just TCP!)
- Check that GeyserMC is loaded: `/geyserproxy status`

### Bedrock player shows "Invalid IP"
- Check that `enable-raw-ip-forwarding` is enabled on the server
- Verify network firewall allows UDP on 19132

### Commands
- `/geyserproxy status` - Check Geyser status
- `/geyserproxy reload` - Reload Geyser config
- `/floodgate register` - Register a Bedrock player link
- `/floodgate unregister <player>` - Unregister link

## DNS/Cloudflare Settings
If using Cloudflare:
- UDP port 19132 must bypass Cloudflare (UDP not supported)
- Use a direct IP or TCP/UDP tunnel for Bedrock
