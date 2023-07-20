terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}
resource "google_compute_firewall" "fw-services-base-ssh-iap" {
  allow {
    ports    = var.iap_port
    protocol = var.iap_protocol
  }
  description   = var.iap_description
  direction     = var.direction
  name          = var.iap_name
  network       = var.network
  priority      = var.priority
  project       = var.project
  source_ranges = var.iap_ranges
}
resource "google_compute_firewall" "fw-services-base-http-public" {
  allow {
    ports    = var.http_port
    protocol = var.http_protocol
  }
  description   = var.http_description
  direction     = var.direction
  name          = var.http_name
  network       = var.network
  priority      = var.priority
  project       = var.project
  source_ranges = var.http_ranges
}
resource "google_compute_firewall" "fw-services-base-health-check-gcp" {
  allow {
    ports    = var.healthcheck_port
    protocol = var.healthcheck_protocol
  }
  description   = var.healthcheck_description
  direction     = var.direction
  name          = var.healthcheck_name
  network       = var.network
  priority      = var.priority
  project       = var.project
  source_ranges = var.healthcheck_ranges
}