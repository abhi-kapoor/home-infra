# UniFi Network Configuration

Infrastructure as Code for UniFi network using [OpenTofu](https://opentofu.org) and the [UniFi provider](https://registry.terraform.io/providers/ubiquiti-community/unifi/latest/docs).

## Prerequisites

- [OpenTofu](https://opentofu.org) - `brew install opentofu`
- [direnv](https://direnv.net) - `brew install direnv`
- UniFi Dream Router (or similar UniFi OS device)

### ⚠️ 2FA/MFA Users

If you have 2FA enabled on your Ubiquiti account, create a **local admin user** for API access:

1. UniFi Console → **Settings → Admins & Users → Add Admin**
2. Select **Local Access Only**
3. Use these credentials in your `.envrc`

## Setup

```bash
# Configure credentials
cp .envrc.example .envrc
# Edit .envrc with your values
direnv allow

# Deploy
tofu init
tofu plan
tofu apply
```

## What This Creates

- **VLAN Networks** - Trusted, Homelab, IoT, Guest with separate subnets
- **WiFi Networks** - SSIDs mapped to VLANs
- **DHCP Reservations** - Static IPs for infrastructure devices

## Manual Steps

Some features require manual configuration in UniFi Console:

- **Port Assignments** - Assign switch ports to VLANs
- **Network Isolation** - Enable "Isolate Network" on IoT/Guest networks

