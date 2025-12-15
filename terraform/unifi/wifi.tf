# =============================================================================
# WiFi Networks
# =============================================================================

data "unifi_user_group" "default" {
}

data "unifi_ap_group" "default" {
}

# -----------------------------------------------------------------------------
# KapoorHome - Trusted Network (VLAN 10)
# -----------------------------------------------------------------------------
resource "unifi_wlan" "kapoorhome" {
  name          = "KapoorHome"
  security      = "wpapsk"
  passphrase    = var.wifi_password_trusted
  network_id    = unifi_network.trusted.id
  user_group_id = data.unifi_user_group.default.id
  ap_group_ids  = [data.unifi_ap_group.default.id]

  hide_ssid = false
}

# -----------------------------------------------------------------------------
# KapoorHome-IoT - IoT Network (VLAN 30)
# -----------------------------------------------------------------------------
resource "unifi_wlan" "kapoorhome_iot" {
  name          = "KapoorHome-IoT"
  security      = "wpapsk"
  passphrase    = var.wifi_password_iot
  network_id    = unifi_network.iot.id
  user_group_id = data.unifi_user_group.default.id
  ap_group_ids  = [data.unifi_ap_group.default.id]

  hide_ssid = false
}

# -----------------------------------------------------------------------------
# KapoorHome-Guest - Guest Network (VLAN 50)
# -----------------------------------------------------------------------------
resource "unifi_wlan" "kapoorhome_guest" {
  name          = "KapoorHome-Guest"
  security      = "wpapsk"
  passphrase    = var.wifi_password_guest
  network_id    = unifi_network.guest.id
  user_group_id = data.unifi_user_group.default.id
  ap_group_ids  = [data.unifi_ap_group.default.id]

  hide_ssid = false
}
