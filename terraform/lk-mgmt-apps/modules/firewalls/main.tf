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

resource "google_compute_firewall" "fw-services-base-allow-all-internal-network" {
  allow {
    ports    = var.allow_all_internal_network_port
  }
  description   = var.allow_all_internal_network_description
  direction     = var.direction
  name          = var.allow_all_internal_network_name
  network       = var.network
  priority      = var.priority
  project       = var.project
  source_ranges = var.allow_all_internal_network_ranges
}
resource "google_compute_firewall" "fw-services-base-allow-all-internal-network-gke" {
  allow {
    ports    = var.allow_all_internal_network_gke_port
  }
  description   = var.allow_all_internal_network_gke_description
  direction     = var.direction
  name          = var.allow_all_internal_network_gke_name
  network       = var.network
  priority      = var.priority
  project       = var.project
  source_ranges = var.allow_all_internal_network_gke_ranges
}
resource "google_compute_firewall" "fw-services-base-allow-gke-kubeseal-01" {
  allow {
    ports    = var.allow_gke_kubseal_port
    protocol = var.allow_gke_kubeseal_protocol
  }
  description   = var.allow_gke_kubeseal_description
  direction     = var.direction
  name          = var.allow_gke_kubeseal_name
  network       = var.network
  priority      = var.priority
  project       = var.project
  source_ranges = var.allow_gke_kubeseal_ranges
}
resource "google_compute_firewall" "fw-gke-allow-tcp-loadbalancer" {
  allow {
    ports    = var.gke_allow_tcp_loadbalancer_port
    protocol = var.gke_allow_tcp_loadbalancer_protocol
  }
  description   = var.gke_allow_tcp_loadbalancer_description
  direction     = var.direction
  name          = var.gke_allow_tcp_loadbalancer_name
  network       = var.network
  priority      = var.priority
  project       = var.project
  source_ranges = var.gke_allow_tcp_loadbalancer_ranges
}
