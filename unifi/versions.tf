terraform {
  required_version = ">= 1.6" # OpenTofu compatible

  required_providers {
    unifi = {
      source  = "ubiquiti-community/unifi"
      version = "~> 0.41"
    }
  }
}
