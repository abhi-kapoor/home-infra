# Home Infrastructure

Private infrastructure-as-code repository for Kapoor Home.

> ⚠️ **This repository is private** - contains network configuration and secrets references.

## Structure

```
home-infra/
├── terraform/
│   └── unifi/          # UniFi Dream Router configuration
│       ├── networks.tf     # VLAN definitions
│       ├── wifi.tf         # WiFi SSIDs
│       └── ...
└── README.md
```

## Components

### UniFi Network (`terraform/unifi/`)

Manages UniFi Dream Router configuration:
- VLAN networks (Trusted, Homelab, IoT, Guest)
- WiFi SSIDs
- DHCP reservations

See [terraform/unifi/README.md](terraform/unifi/README.md) for setup instructions.

## Prerequisites

- [OpenTofu](https://opentofu.org) - `brew install opentofu`
- Access to UniFi console

## Related Repositories

- [talos-pi4/homelab](https://github.com/abhi-kapoor/homelab) - Kubernetes manifests (public)

