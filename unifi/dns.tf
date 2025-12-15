# -----------------------------------------------------------------------------
# DNS Records
# -----------------------------------------------------------------------------

resource "unifi_dns_record" "argocd" {
  name        = "argocd.kapoor.home.arpa"
  record_type = "A"
  value       = "192.168.20.50"
  port        = 0
  ttl         = 300
}
