direction                                  = "INGRESS"
network                                    = "vpc-m-services-base"
priority                                   = 1000
project                                    = "cloudside-academy"
iap_port                                   = ["22"]
iap_protocol                               = "tcp"
iap_description                            = "SSH access via IAP"
iap_name                                   = "fw-m-services-base-ssh-iap"
iap_ranges                                 = ["35.235.240.0/20"]
http_port                                  = ["80", "443"]
http_protocol                              = "tcp"
http_description                           = "HTTP access to public"
http_name                                  = "fw-m-services-base-http-public"
http_ranges                                = ["0.0.0.0/0"]
healthcheck_port                           = []
healthcheck_protocol                       = "tcp"
healthcheck_description                    = "Allow GCP Health Check probes"
healthcheck_name                           = "fw-m-services-base-health-check-gcp"
healthcheck_ranges                         = ["209.85.204.0/22", "209.85.152.0/22", "130.211.0.0/22", "35.191.0.0/16"]
allow_all_internal_network_port            = "all"
allow_all_internal_network_protocol        = ""
allow_all_internal_network_description     = "allow all port for internal-network"
allow_all_internal_network_name            = "fw-m-services-base-allow-all-internal-network"
allow_all_internal_network_ranges          = ["10.50.0.0/16"]
allow_all_internal_network_gke_port        = "all"
allow_all_internal_network_gke_protocol    = ""
allow_all_internal_network_gke_description = "allow all gke internal-network"
allow_all_internal_network_gke_name        = "fw-m-services-base-allow-all-internal-network-from-gke"
allow_all_internal_network_gke_ranges      = ["10.201.0.0/16", "10.101.0.0/16"]
allow_gke_kubeseal_port                    = ["8080"]
allow_gke_kubeseal_protocol                = "tcp"
allow_gke_kubeseal_description             = "allow gke kubeseal"
allow_gke_kubeseal_name                    = "fw-m-services-base-allow-gke-kubeseal-01"
allow_gke_kubeseal_ranges                  = ["10.9.0.0/28"]
gke_allow_tcp_loadbalencer_port            = "8080"
gke_allow_tcp_loadbalencer_protocol        = "tcp"
gke_allow_tcp_loadbalencer_description     = "allow tcp loadbalencer"
gke_allow_tcp_loadbalencer_name            = "fw-gke-allow-tcp-loadbalencer"
gke_allow_tcp_loadbalencer_ranges          = ["130.211.0.0/22", "35.191.0.0/16"]




