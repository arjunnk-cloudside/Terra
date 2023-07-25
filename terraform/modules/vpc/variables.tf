variable "project" {
  description = "Project ID"
  type        = string
}
variable "routing_mode" {
  description = "Type of Routing Mode"
  type        = string
}
variable "private_ip_google_access" {
  description = "VMs in this subnetwork without external IP addresses can access Google APIs and services by using Private Google Access"
  type        = string
}
variable "region" {
  description = "Name of the region where VPC is launched"
  type        = string
}
variable "name_vpc_network" {
   description = "Name of the network"
   type        = string
}
variable "name_private_subnet_shared" {
   description = "Name of the shared subnet"
   type        = string
}
variable "auto_create_subnetworks" {
  description = "Network creation mode- Auto or Manual"
  type        = bool
}
variable "ip_cidr_range_shared" {
  description = "Subnetwork internal IP address range"
  type        = string
}
variable "gke_pod_shared_ip" {
  description = "GKE pod IP range"
  type        = string
}
variable "gke_svc_shared_ip" {
  description = "GKE service IP range"
  type        = string
}
variable "gke_pod_shared_name" {
  description = "GKE Pod name"
  type        = string
}
variable "gke_svc_shared_name" {
  description = "GKE service name"
  type        = string
}
variable "name_private_subnet_app" {
   description = "Name of the app subnet"
   type        = string
}
variable "ip_cidr_range_app" {
  description = "Subnetwork internal IP address range"
  type        = string
}
variable "gke_pod_app_ip" {
  description = "GKE pod IP range"
  type        = string
}
variable "gke_svc_app_ip" {
  description = "GKE service IP range"
  type        = string
}
variable "gke_pod_app_name" {
  description = "GKE Pod name"
  type        = string
}
variable "gke_svc_app_name" {
  description = "GKE service name"
  type        = string
}
variable "name_private_subnet_db" {
   description = "Name of the app subnet"
   type        = string
}
variable "ip_cidr_range_db" {
  description = "Subnetwork internal IP address range"
  type        = string
}
