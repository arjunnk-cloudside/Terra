routing_mode                    = "GLOBAL"
private_ip_google_access        = "true"
project                         = "lk-dev-apps"
region                          = "asia-south2"
name_vpc_network                = "vpc-d-services-base"
name_private_subnet_shared      = "sb-d-services-base-asso2-shared1"
auto_create_subnetworks         = "false"
ip_cidr_range_shared            = "10.50.8.0/21"
gke_pod_shared_ip               = "10.200.0.0/16"
gke_svc_shared_ip               = "10.100.0.0/16"
gke_pod_shared_name             = "sb-d-services-base-asso2-gpod1"  
gke_svc_shared_name             = "sb-d-services-base-asso2-gsvc1"
name_private_subnet_app         = "sb-d-services-base-asso2-app1"
ip_cidr_range_app               = "10.50.16.0/21"
gke_pod_app_ip                  = "10.201.0.0/16"
gke_svc_app_ip                  = "10.101.0.0/16"
gke_pod_app_name                = "sb-d-services-base-asso2-gpod1"  
gke_svc_app_name                = "sb-d-services-base-asso2-gsvc1"
name_private_subnet_db          = "sb-d-services-base-asso2-db1"
ip_cidr_range_db                = "10.50.24.0/21"