terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}



data "google_compute_ha_vpn_gateway" "gateway" {
  name    = var.name_vpn_gateway
  project = var.project
  region  = var.region
}

resource "google_compute_router" "router" {
  name    = var.name_router
  network = var.network
  project = var.project
  region  = var.region
  bgp {
    asn = var.asn
  }
}

resource "google_compute_external_vpn_gateway" "external_gateway" {
  name            = var.name_peer_vpn_gateway
  redundancy_type = var.redundancy_type
  project         = var.project
  description     = "peer vpn gateway"
  interface {
    id         = 0
    ip_address = var.vir_pvt_gat_out_ip_address_1
  }
  interface {
    id         = 1
    ip_address = var.vir_pvt_gat_out_ip_address_2
  }
  interface {
    id         = 2
    ip_address = var.vir_pvt_gat_out_ip_address_3
  }
  interface {
    id         = 3
    ip_address = var.vir_pvt_gat_out_ip_address_4
  }
}

resource "google_compute_vpn_tunnel" "tunnel1" {
  name                            = var.name_tunnel_1
  project                         = var.project
  region                          = var.region
  shared_secret                   = var.shared_secret_tunnel_1
  ike_version                     = var.ike_version
  description                     = "tunnel 1"
  router                          = google_compute_router.router.self_link
  vpn_gateway_interface           = 0
  peer_external_gateway           = google_compute_external_vpn_gateway.external_gateway.self_link
  vpn_gateway                     = "vpn-gw-gcp-mgmt-to-aws-uat"
  peer_external_gateway_interface = 0
}


resource "google_compute_vpn_tunnel" "tunnel2" {
  name                            = var.name_tunnel_2
  project                         = var.project
  region                          = var.region
  shared_secret                   = var.shared_secret_tunnel_2
  ike_version                     = var.ike_version
  description                     = "tunnel 2"
  router                          = google_compute_router.router.self_link
  vpn_gateway_interface           = 0
  peer_external_gateway           = google_compute_external_vpn_gateway.external_gateway.self_link
  vpn_gateway                     = "vpn-gw-gcp-mgmt-to-aws-uat"
  peer_external_gateway_interface = 1
}

resource "google_compute_vpn_tunnel" "tunnel3" {
  name                            = var.name_tunnel_3
  project                         = var.project
  region                          = var.region
  shared_secret                   = var.shared_secret_tunnel_3
  ike_version                     = var.ike_version
  description                     = "tunnel 3"
  router                          = google_compute_router.router.self_link
  vpn_gateway_interface           = 1
  peer_external_gateway           = google_compute_external_vpn_gateway.external_gateway.self_link
  vpn_gateway                     = "vpn-gw-gcp-mgmt-to-aws-uat"
  peer_external_gateway_interface = 2
}



resource "google_compute_vpn_tunnel" "tunnel4" {
  name                            = var.name_tunnel_4
  project                         = var.project
  region                          = var.region
  shared_secret                   = var.shared_secret_tunnel_4
  ike_version                     = var.ike_version
  description                     = "tunnel 4"
  router                          = google_compute_router.router.self_link
  vpn_gateway_interface           = 1
  peer_external_gateway           = google_compute_external_vpn_gateway.external_gateway.self_link
  vpn_gateway                     = "vpn-gw-gcp-mgmt-to-aws-uat"
  peer_external_gateway_interface = 3
}


resource "google_compute_router_interface" "router_interface1" {
  name       = var.rout_int_name1
  project    = var.project
  router     = google_compute_router.router.name
  region     = var.region
  ip_range   = var.cus_gat_ins_ip_add_1
  vpn_tunnel = google_compute_vpn_tunnel.tunnel1.name
}

resource "google_compute_router_peer" "router_peer1" {
  name                      = var.router_peer_name1
  project                   = var.project
  router                    = google_compute_router.router.name
  region                    = var.region
  peer_ip_address           = var.vir_pvt_gat_ins_ip_add_1
  peer_asn                  = var.vir_pvt_gat_asn
  advertised_route_priority = 0
  advertise_mode            = "CUSTOM"
  advertised_ip_ranges {
    range = var.reg_ip_add
  }
  interface = google_compute_router_interface.router_interface1.name
}

resource "google_compute_router_interface" "router_interface2" {
  name       = var.rout_int_name2
  project    = var.project
  router     = google_compute_router.router.name
  region     = var.region
  ip_range   = var.cus_gat_ins_ip_add_2
  vpn_tunnel = google_compute_vpn_tunnel.tunnel2.name
}

resource "google_compute_router_peer" "router_peer2" {
  name                      = var.router_peer_name2
  project                   = var.project
  router                    = google_compute_router.router.name
  region                    = var.region
  peer_ip_address           = var.vir_pvt_gat_ins_ip_add_2
  peer_asn                  = var.vir_pvt_gat_asn
  advertised_route_priority = 0
  advertise_mode            = "CUSTOM"
  advertised_ip_ranges {
    range = var.reg_ip_add
  }
  interface = google_compute_router_interface.router_interface2.name
}

resource "google_compute_router_interface" "router_interface3" {
  name       = var.rout_int_name3
  project    = var.project
  router     = google_compute_router.router.name
  region     = var.region
  ip_range   = var.cus_gat_ins_ip_add_3
  vpn_tunnel = google_compute_vpn_tunnel.tunnel3.name
}

resource "google_compute_router_peer" "router_peer3" {
  name                      = var.router_peer_name3
  project                   = var.project
  router                    = google_compute_router.router.name
  region                    = var.region
  peer_ip_address           = var.vir_pvt_gat_ins_ip_add_3
  peer_asn                  = var.vir_pvt_gat_asn
  advertised_route_priority = 0
  advertise_mode            = "CUSTOM"
  advertised_ip_ranges {
    range = var.reg_ip_add
  }
  interface = google_compute_router_interface.router_interface3.name
}

resource "google_compute_router_interface" "router_interface4" {
  name       = var.rout_int_name4
  project    = var.project
  router     = google_compute_router.router.name
  region     = var.region
  ip_range   = var.cus_gat_ins_ip_add_4
  vpn_tunnel = google_compute_vpn_tunnel.tunnel4.name
}

resource "google_compute_router_peer" "router_peer4" {
  name                      = var.router_peer_name4
  project                   = var.project
  router                    = google_compute_router.router.name
  region                    = var.region
  peer_ip_address           = var.vir_pvt_gat_ins_ip_add_4
  peer_asn                  = var.vir_pvt_gat_asn
  advertised_route_priority = 0
  advertise_mode            = "CUSTOM"
  advertised_ip_ranges {
    range = var.reg_ip_add
  }
  interface = google_compute_router_interface.router_interface4.name
}
