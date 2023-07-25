# VPC
routing_mode                    = "GLOBAL"
private_ip_google_access        = "true"
project                         = "lk-mgmt-apps"
region                          = "asia-south2"
name_vpc_network                = "vpc-m-services-base"
name_private_subnet_shared      = "sb-m-services-base-asso2-shared1"
auto_create_subnetworks         = "false"
ip_cidr_range_shared            = "10.50.8.0/21"
gke_pod_shared_ip               = "10.200.0.0/16"
gke_svc_shared_ip               = "10.100.0.0/16"
gke_pod_shared_name             = "sb-m-services-base-asso2-gpod1"
gke_svc_shared_name             = "sb-m-services-base-asso2-gsvc1"
name_private_subnet_app         = "sb-m-services-base-asso2-app1"
ip_cidr_range_app               = "10.50.16.0/21"
gke_pod_app_ip                  = "10.201.0.0/16"
gke_svc_app_ip                  = "10.101.0.0/16"
gke_pod_app_name                = "sb-m-services-base-asso2-gpod1"
gke_svc_app_name                = "sb-m-services-base-asso2-gsvc1"
name_private_subnet_db          = "sb-m-services-base-asso2-db1"
ip_cidr_range_db                = "10.50.24.0/21"

# Firewall
direction                                  = "INGRESS"
network                                    = "vpc-m-services-base"
priority                                   = 1000
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
allow_all_internal_network_port            = []
allow_all_internal_network_protocol        = "all"
allow_all_internal_network_description     = "allow all port for internal-network"
allow_all_internal_network_name            = "fw-m-services-base-allow-all-internal-network"
allow_all_internal_network_ranges          = ["10.50.0.0/16"]
allow_all_internal_network_gke_port        = []
allow_all_internal_network_gke_protocol    = "all"
allow_all_internal_network_gke_description = "allow all gke internal-network"
allow_all_internal_network_gke_name        = "fw-m-services-base-allow-all-internal-network-from-gke"
allow_all_internal_network_gke_ranges      = ["10.201.0.0/16", "10.101.0.0/16"]
allow_gke_kubeseal_port                    = ["8080"]
allow_gke_kubeseal_protocol                = "tcp"
allow_gke_kubeseal_description             = "allow gke kubeseal"
allow_gke_kubeseal_name                    = "fw-m-services-base-allow-gke-kubeseal-01"
allow_gke_kubeseal_ranges                  = ["10.9.0.0/28"]
gke_allow_tcp_loadbalancer_port            = ["80"]
gke_allow_tcp_loadbalancer_protocol        = "tcp"
gke_allow_tcp_loadbalancer_description     = "allow tcp loadbalancer"
gke_allow_tcp_loadbalancer_name            = "fw-gke-allow-tcp-loadbalancer"
gke_allow_tcp_loadbalancer_ranges          = ["130.211.0.0/22", "35.191.0.0/16"]

# Cloudnat
router_name 		= "cr-m-services-base-asso2-cr1"
bgp_asn 		= "64519"
ip_count 		= "2"
nat_name 		= "nat-m-services-base-asso2-nat1"
nat_ip_allocate_option 	= "MANUAL_ONLY"
source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"

# Service Account
account_id   = "meg-service-account-id"
display_name = "Service Account"
description  = "Sample description"

# mgmt vm
zone                = "asia-south2-a"
labels              =  {env = "mgmt", team = "devops", deployed-by = "cloudside"}
image               = "ubuntu-2204-jammy-v20230714"
can_ip_forward      = false
deletion_protection = false
enable_display      = false
machine_type        = "e2-micro"
name                = "vm-m-services-base-asso2-mgmt-01 "
subnetwork_project  = "lk-mgmt-apps"
queue_count         = "0"
stack_type          = "IPV4_ONLY"
subnetwork          = "sb-m-services-base-usce1-shared1"
min_node_cpus       = "0"
on_host_maintenance = "MIGRATE"  // if preemptible is true then the value should to be  "TERMINATE"
preemptible         = "false"
email               = "769170094354-compute@developer.gserviceaccount.com"
scopes              = ["cloud-platform"]
tags                = ["allow-ssh","mgmt"]
size                = "10"

# gke
name                        = "gke-m-cluster-01"
location                    = "asia-south2"
node_locations              = ["asia-south2-a", "asia-south2-b","asia-south2-c"]
initial_node_count          = 1
channel                     = "REGULAR"
cluster_secondary_range_name = "pod-gke-shared"
services_secondary_range_name = "svc-gke-shared"
network                     = "projects/lk-mgmt-apps/global/networks/vpc-m-services-base"
subnetwork                  = "projects/lk-mgmt-apps/regions/asia-south2/subnetworks/sb-m-services-base-asso2-app1"
enable_private_endpoint     = "true"
enable_private_nodes        = "true"
master_ipv4_cidr_block      = "172.16.0.0/28"
enable_shielded_nodes       = "true"
workload_pool               = "lk-mgmt-apps.svc.id.goog"
issue_client_certificate    = "false"
cidr_block                  = "192.168.0.0/16"
display_name                = "auth-network-01"
enable_components           = ["SYSTEM_COMPONENTS", "WORKLOADS"]
max_node_count              = "6"
min_node_count              = "1"
node_count                  = "1"
disk_size_gb                = "200"
disk_type                   = "pd-balanced"
image_type                  = "COS_CONTAINERD"
local_ssd_count             = "0"
machine_type                = "e2-standard-2"
max_pods_per_node           = "25"
service_account             = "769170094354-compute@developer.gserviceaccount.com"
oauth_scopes                = ["https://www.googleapis.com/auth/cloud-platform"]
auto_repair                 = "true"
auto_upgrade                = "true"
max_surge                   = "2"
max_unavailable             = "1"
enable_integrity_monitoring = "true"
enable_secure_boot          = "true"
network_policy              = "false"
master_global_access         = "true"
nodepool_name               = "node-pool-e2-m"
node_version                = "1.24.7-gke.900"

