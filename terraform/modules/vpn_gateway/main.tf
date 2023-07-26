terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

resource "google_compute_ha_vpn_gateway" "vpn_gateway" {
  region   = var.region
  name     = var.name
  network  = var.network
  project  = var.project
}

