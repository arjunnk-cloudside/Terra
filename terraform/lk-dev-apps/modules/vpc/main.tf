terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}
resource "google_compute_network" "module-test-vpc" {
  name                            = var.name_vpc_network
  routing_mode                    = var.routing_mode
  project                         = var.project 
  auto_create_subnetworks          = var.auto_create_subnetworks
}
resource "google_compute_subnetwork" "shared-subnet" {
  ip_cidr_range              = var.ip_cidr_range_shared
  name                       = var.name_private_subnet_shared
  network                    = "${google_compute_network.module-test-vpc.self_link}"
  project                    = var.project
  private_ip_google_access   = var.private_ip_google_access
  region                     = var.region
  secondary_ip_range {
    ip_cidr_range = var.gke_pod_shared_ip
    range_name    = var.gke_pod_shared_name
  }
  secondary_ip_range {
    ip_cidr_range = var.gke_svc_shared_ip
    range_name    = var.gke_svc_shared_name
  }
  }
resource "google_compute_subnetwork" "app-subnet" {
  ip_cidr_range              = var.ip_cidr_range_app
  name                       = var.name_private_subnet_app
  network                    = "${google_compute_network.module-test-vpc.self_link}"
  project                    = var.project
  private_ip_google_access   = var.private_ip_google_access
  region                     = var.region
  secondary_ip_range {
    ip_cidr_range = var.gke_pod_app_ip
    range_name    = var.gke_pod_app_name
  }
  secondary_ip_range {
    ip_cidr_range = var.gke_svc_app_ip
    range_name    = var.gke_svc_app_name
  }
  }
resource "google_compute_subnetwork" "db-subnet" {
  ip_cidr_range              = var.ip_cidr_range_db
  name                       = var.name_private_subnet_db
  network                    = "${google_compute_network.module-test-vpc.self_link}"
  project                    = var.project
  private_ip_google_access   = var.private_ip_google_access
  region                     = var.region
  }
