zone                = "asia-south2"
labels              =  {env = "dev", team = "devops"}
image               = "ubuntu-2110-impish-v20220309"
can_ip_forward      = false
deletion_protection = false
enable_display      = false
machine_type        = "e2-micro"
name                = "dev-vm"
network             = "vpc-d-services-base"
subnetwork_project  = "lk-dev-apps"
queue_count         = "0"
stack_type          = "IPV4_ONLY"
subnetwork          = "sb-d-services-base-asso2-shared1"
min_node_cpus       = "0"
on_host_maintenance = "MIGRATE"  // if preemptible is true then the value should to be  "TERMINATE"
preemptible         = "false"
email               = "769170094354-compute@developer.gserviceaccount.com"
scopes              = ["cloud-platform"]
tags                = ["allow-ssh","dev"]
size                = "10"
