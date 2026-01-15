# Custom Domain Setup for Minecraft Server

## Adding mc.bradarr.com

### Option 1: Via Coolify UI (Recommended)
1. Go to http://localhost:8000
2. Open the Minecraft Server application
3. Click "Configuration" → "Domains"
4. Add domain: `mc.bradarr.com`
5. Save and restart application

### Option 2: DNS Setup (Cloudflare/Namecheap)
1. Add A record:
   - Name: `mc`
   - Type: `A`
   - Value: `<your-server-ip>`
   - TTL: Auto

2. If using Cloudflare, set proxy status to "DNS only" (not proxied) for UDP ports

### After Adding Domain

**Java Edition:**
- Server address: `mc.bradarr.com`
- Port: `25565` (default, can be omitted)

**Bedrock Edition:**
- Server address: `mc.bradarr.com`
- Port: `19132`

## Current URL
Until custom domain is added, use:
- `kos8044os48kcw4gk48wk00w.bradarr.com:25565`
