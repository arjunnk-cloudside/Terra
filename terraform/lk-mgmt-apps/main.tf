# VPC
module "vpc" {
  source                   = "./modules/vpc"
  project                  = var.project
  private_ip_google_access = var.private_ip_google_access
  region                   = var.region
  routing_mode             = var.routing_mode
  name_private_subnet_shared = var.name_private_subnet_shared
  name_vpc_network         = var.name_vpc_network
  auto_create_subnetworks  = var.auto_create_subnetworks
  ip_cidr_range_shared     = var.ip_cidr_range_shared
  gke_pod_shared_ip        = var.gke_pod_shared_ip
  gke_svc_shared_ip        = var.gke_svc_shared_ip
  gke_pod_shared_name      = var.gke_pod_shared_name
  gke_svc_shared_name      = var.gke_svc_shared_name
  name_private_subnet_app  = var.name_private_subnet_app
  ip_cidr_range_app        = var.ip_cidr_range_app
  gke_pod_app_ip           = var.gke_pod_app_ip
  gke_svc_app_ip           = var.gke_svc_app_ip
  gke_pod_app_name         = var.gke_pod_app_name
  gke_svc_app_name         = var.gke_svc_app_name
  name_private_subnet_db  = var.name_private_subnet_db
  ip_cidr_range_db        = var.ip_cidr_range_db
}

# Firewalls
module "firewalls" {
  source                                     = "./modules/firewalls"
  direction                                  = var.direction
  network                                    = var.network
  priority                                   = var.priority
  project                                    = var.project
  iap_port                                   = var.iap_port
  iap_protocol                               = var.iap_protocol
  iap_description                            = var.iap_description
  iap_name                                   = var.iap_name
  iap_ranges                                 = var.iap_ranges
  http_port                                  = var.http_port
  http_protocol                              = var.http_protocol
  http_description                           = var.http_description
  http_name                                  = var.http_name
  http_ranges                                = var.http_ranges
  healthcheck_port                           = var.healthcheck_port
  healthcheck_protocol                       = var.healthcheck_protocol
  healthcheck_description                    = var.healthcheck_description
  healthcheck_name                           = var.healthcheck_name
  healthcheck_ranges                         = var.healthcheck_ranges
  allow_all_internal_network_port            = var.allow_all_internal_network_port
  allow_all_internal_network_protocol        = var.allow_all_internal_network_protocol
  allow_all_internal_network_description     = var.allow_all_internal_network_description
  allow_all_internal_network_name            = var.allow_all_internal_network_name
  allow_all_internal_network_ranges          = var.allow_all_internal_network_ranges
  allow_all_internal_network_gke_port        = var.allow_all_internal_network_gke_port
  allow_all_internal_network_gke_protocol    = var.allow_all_internal_network_gke_protocol
  allow_all_internal_network_gke_description = var.allow_all_internal_network_gke_description
  allow_all_internal_network_gke_name        = var.allow_all_internal_network_gke_name
  allow_all_internal_network_gke_ranges      = var.allow_all_internal_network_gke_ranges
  allow_gke_kubeseal_port                    = var.allow_gke_kubeseal_port
  allow_gke_kubeseal_protocol                = var.allow_gke_kubeseal_protocol
  allow_gke_kubeseal_description             = var.allow_gke_kubeseal_description
  allow_gke_kubeseal_name                    = var.allow_gke_kubeseal_name
  allow_gke_kubeseal_ranges                  = var.allow_gke_kubeseal_ranges
  gke_allow_tcp_loadbalancer_port            = var.gke_allow_tcp_loadbalancer_port
  gke_allow_tcp_loadbalancer_protocol        = var.gke_allow_tcp_loadbalancer_protocol
  gke_allow_tcp_loadbalancer_description     = var.gke_allow_tcp_loadbalancer_description
  gke_allow_tcp_loadbalancer_name            = var.gke_allow_tcp_loadbalancer_name
  gke_allow_tcp_loadbalancer_ranges          = var.gke_allow_tcp_loadbalancer_ranges
}

# Cloudnat
module "cloudnat" {
    source = "./modules/cloudnat"
    region  = var.region
    router_name = var.router_name
    network = var.network
    project = var.project
    bgp_asn = var.bgp_asn
    ip_count = var.ip_count
    nat_name = var.nat_name
    nat_ip_allocate_option = var.nat_ip_allocate_option
    source_subnetwork_ip_ranges_to_nat = var.source_subnetwork_ip_ranges_to_nat
}

# Service Account
module "service-account" {
    source       = "./modules/service-account"
    account_id   = var.account_id
    display_name = var.display_name
    description  = var.description
    project      = var.project 
}


#mgmt vm
module "vm-private" {
    source              = "./modules/gce"
    zone                = var.zone
    labels              = var.labels
    image               = var.image
    can_ip_forward      = var.can_ip_forward
    deletion_protection = var.deletion_protection
    enable_display      = var.enable_display
    machine_type        = var.machine_type
    name                = var.name
    network             = var.network
    subnetwork_project  = var.subnetwork_project
    queue_count         = var.queue_count
    stack_type          = var.stack_type
    subnetwork          = var.subnetwork
    min_node_cpus       = var.min_node_cpus
    on_host_maintenance = var.on_host_maintenance
    preemptible         = var.preemptible
    email               = var.email
    scopes              = var.scopes
    tags                = var.tags
    size                = var.size
}

# gke

module "gke-private" {
  source = "./modules/gke-private"
  name                      = var.name
  location                    = var.location
  project                     = var.project
  node_locations              = var.node_locations
  initial_node_count          = var.initial_node_count
  channel                     = var.channel
  cluster_secondary_range_name = var.cluster_secondary_range_name
  services_secondary_range_name = var.services_secondary_range_name
  network                     = var.network
  subnetwork                  = var.subnetwork
  enable_private_endpoint     = var.enable_private_endpoint
  enable_private_nodes        = var.enable_private_nodes
  master_ipv4_cidr_block      = var.master_ipv4_cidr_block
  enable_shielded_nodes       = var.enable_shielded_nodes
  workload_pool               = var.workload_pool
  issue_client_certificate    = var.issue_client_certificate
  cidr_block                  = var.cidr_block
  display_name                = var.display_name
  enable_components           = var.enable_components
  max_node_count              = var.max_node_count
  min_node_count              = var.min_node_count
  node_count                  = var.node_count
  disk_size_gb                = var.disk_size_gb
  disk_type                   = var.disk_type
  image_type                  = var.image_type
  local_ssd_count             = var.local_ssd_count
  machine_type                = var.machine_type
  max_pods_per_node           = var.max_pods_per_node
  service_account             = var.service_account
  oauth_scopes                = var.oauth_scopes
  auto_repair                 = var.auto_repair
  auto_upgrade                = var.auto_upgrade
  max_surge                   = var.max_surge
  max_unavailable             = var.max_unavailable
  enable_integrity_monitoring = var.enable_integrity_monitoring
  enable_secure_boot          = var.enable_secure_boot
  network_policy              = var.network_policy
  master_global_access         = var.master_global_access
  nodepool_name               = var.nodepool_name
  node_version                = var.node_version
}
