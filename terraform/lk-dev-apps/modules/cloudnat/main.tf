terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}
resource "google_compute_router" "cr-services-base-cr1" {     
  name    = var.router_name
  region  = var.region
  network = var.network
  project = var.project
  bgp {
    asn = var.bgp_asn
  }
}
resource "google_compute_address" "address" {
  count  = var.ip_count
  name   = "nat-services-base-static-ip-${count.index}"
  region = var.region
}
resource "google_compute_router_nat" "nat-services-base-nat1" {
  name                               = var.nat_name
  router                             = google_compute_router.cr-services-base-cr1.name
  region                             = var.region
  nat_ip_allocate_option             = var.nat_ip_allocate_option
  nat_ips                            = google_compute_address.address.*.self_link
  source_subnetwork_ip_ranges_to_nat = var.source_subnetwork_ip_ranges_to_nat
}