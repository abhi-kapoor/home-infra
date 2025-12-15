variable "unifi_username" {
  description = "UniFi controller username"
  type        = string
}

variable "unifi_password" {
  description = "UniFi controller password"
  type        = string
  sensitive   = true
}

variable "unifi_api_url" {
  description = "UniFi controller API URL (for UniFi OS devices like UDR, include /proxy/network)"
  type        = string
}

variable "wifi_password_trusted" {
  description = "WiFi password for KapoorHome (Trusted) network"
  type        = string
  sensitive   = true
}

variable "wifi_password_iot" {
  description = "WiFi password for KapoorHome-IoT network"
  type        = string
  sensitive   = true
}

variable "wifi_password_guest" {
  description = "WiFi password for KapoorHome-Guest network"
  type        = string
  sensitive   = true
}

variable "domain_name" {
  description = "Local domain name (using .home.arpa per RFC 8375)"
  type        = string
}

# RPI4 MAC address for DHCP reservation
variable "rpi4_mac_address" {
  description = "MAC address of RPI4 for static DHCP reservation"
  type        = string
  default     = "" # Set this after finding the MAC
}
