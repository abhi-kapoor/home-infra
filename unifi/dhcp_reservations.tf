# -----------------------------------------------------------------------------
# RPI4 - Talos Kubernetes Node
# -----------------------------------------------------------------------------
resource "unifi_user" "rpi4" {
  count = var.rpi4_mac_address != "" ? 1 : 0

  mac  = var.rpi4_mac_address
  name = "rpi4-talos"
  note = "Raspberry Pi 4 - Talos Linux Kubernetes Node"

  # Fixed IP on Homelab VLAN
  fixed_ip   = "192.168.20.10"
  network_id = unifi_network.homelab.id
}
