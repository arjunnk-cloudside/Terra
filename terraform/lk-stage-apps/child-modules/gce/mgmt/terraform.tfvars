zone                = "asia-south2-a"
labels              =  {env = "stage", team = "devops","deployed-by = "cloudside"}
image               = "ubuntu-2204-jammy-v20230714"
can_ip_forward      = false
deletion_protection = false
enable_display      = false
machine_type        = "e2-micro"
name                = "vm-s-services-base-asso2-mgmt-01"
network             = "vpc-s-services-base"
subnetwork_project  = "lk-stage-apps"
queue_count         = "0"
stack_type          = "IPV4_ONLY"
subnetwork          = "sb-s-services-base-asso2-shared1"
min_node_cpus       = "0"
on_host_maintenance = "MIGRATE"  // if preemptible is true then the value should to be  "TERMINATE"
preemptible         = "false"
email               = "sa-workstation-vm@lk-stage-apps.iam.gserviceaccount.com"
scopes              = ["cloud-platform"]
tags                = ["allow-ssh","mgmt"]
size                = "50"
