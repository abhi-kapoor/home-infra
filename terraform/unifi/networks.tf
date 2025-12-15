# -----------------------------------------------------------------------------
# VLAN 10 - Trusted (Personal Devices)
# -----------------------------------------------------------------------------
resource "unifi_network" "trusted" {
  name    = "Trusted"
  purpose = "corporate"

  vlan_id      = 10
  subnet       = "192.168.10.0/24"
  dhcp_start   = "192.168.10.100"
  dhcp_stop    = "192.168.10.200"
  dhcp_enabled = true

  domain_name = var.domain_name
}

# -----------------------------------------------------------------------------
# VLAN 20 - Homelab (Kubernetes Infrastructure)
# -----------------------------------------------------------------------------
resource "unifi_network" "homelab" {
  name    = "Homelab"
  purpose = "corporate"

  vlan_id      = 20
  subnet       = "192.168.20.0/24"
  dhcp_start   = "192.168.20.100"
  dhcp_stop    = "192.168.20.200"
  dhcp_enabled = true

  domain_name = var.domain_name
}

# -----------------------------------------------------------------------------
# VLAN 30 - IoT (Smart Devices)
# -----------------------------------------------------------------------------
resource "unifi_network" "iot" {
  name    = "IoT"
  purpose = "corporate"

  vlan_id      = 30
  subnet       = "192.168.30.0/24"
  dhcp_start   = "192.168.30.100"
  dhcp_stop    = "192.168.30.200"
  dhcp_enabled = true

  domain_name = var.domain_name
}

# -----------------------------------------------------------------------------
# VLAN 50 - Guest
# -----------------------------------------------------------------------------
resource "unifi_network" "guest" {
  name    = "Guest"
  purpose = "guest"

  vlan_id      = 50
  subnet       = "192.168.50.0/24"
  dhcp_start   = "192.168.50.100"
  dhcp_stop    = "192.168.50.200"
  dhcp_enabled = true

  domain_name = var.domain_name
}
