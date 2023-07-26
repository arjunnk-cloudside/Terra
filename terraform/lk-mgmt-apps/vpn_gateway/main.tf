terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

resource "google_compute_ha_vpn_gateway" "ha_gateway1" {
  region   = var.region
  name     = var.name
  network  = var.network
  project  = var.project
}