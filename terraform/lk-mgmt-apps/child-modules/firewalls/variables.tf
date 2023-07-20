variable "direction" {
  description = "type of direction"
  type        = string
}
variable "network" {
  description = "Name of the network"
  type        = string
}
variable "priority" {
  description = "firewall rule priority"
  type        = number
}
variable "project" {
  description = "Name of the project"
  type        = string
}
variable "iap_port" {
  description = "list of ports to which this rule applies"
  type        = list(string)
}
variable "iap_protocol" {
  description = "IP protocol to which this rule applies"
  type        = string
}
variable "iap_description" {
  description = "Description of the firewall "
  type        = string
}
variable "iap_name" {
  description = "Name of the firewall"
  type        = string
}
variable "iap_ranges" {
  description = "Source IP ranges"
  type        = set(string)
}
variable "http_port" {
  description = "list of ports to which this rule applies"
  type        = list(string)
}
variable "http_protocol" {
  description = "IP protocol to which this rule applies"
  type        = string
}
variable "http_description" {
  description = "Description of the firewall "
  type        = string
}
variable "http_name" {
  description = "Name of the firewall"
  type        = string
}
variable "http_ranges" {
  description = "Source IP ranges"
  type        = set(string)
}
variable "healthcheck_port" {
  description = "list of ports to which this rule applies"
  type        = list(string)
}
variable "healthcheck_protocol" {
  description = "IP protocol to which this rule applies"
  type        = string
}
variable "healthcheck_description" {
  description = "Description of the firewall "
  type        = string
}
variable "healthcheck_name" {
  description = "Name of the firewall"
  type        = string
}
variable "healthcheck_ranges" {
  description = "Source IP ranges"
  type        = set(string)
}
variable "allow_all_internal_network_port" {
  description = "list of ports to which this rule applies"
  type        = list(string)
}
variable "allow_all_internal_network_description" {
  description = "Description of the firewall "
  type        = string
}
variable "allow_all_internal_network_name" {
  description = "Name of the firewall"
  type        = string
}
variable "allow_all_internal_network_ranges" {
  description = "Source IP ranges"
  type        = set(string)
}
variable "allow_all_internal_network_gke_port" {
  description = "list of ports to which this rule applies"
  type        = list(string)
}
variable "allow_all_internal_network_gke_description" {
  description = "Description of the firewall "
  type        = string
}
variable "allow_all_internal_network_gke_name" {
  description = "Name of the firewall"
  type        = string
}
variable "allow_all_internal_network_gke_ranges" {
  description = "Source IP ranges"
  type        = set(string)
}
variable "allow_gke_kubeseal_port" {
  description = "list of ports to which this rule applies"
  type        = list(string)
}
variable "allow_gke_kubeseal_protocol" {
  description = "IP protocol to which this rule applies"
  type        = string
}
variable "allow_gke_kubeseal_description" {
  description = "Description of the firewall "
  type        = string
}
variable "allow_gke_kubeseal_name" {
  description = "Name of the firewall"
  type        = string
}
variable "allow_gke_kubeseal_ranges" {
  description = "Source IP ranges"
  type        = set(string)
}
variable "gke_allow_tcp_loadbalancer_port" {
  description = "list of ports to which this rule applies"
  type        = list(string)
}
variable "gke_allow_tcp_loadbalancer_protocol" {
  description = "IP protocol to which this rule applies"
  type        = string
}
variable "gke_allow_tcp_loadbalancer_description" {
  description = "Description of the firewall "
  type        = string
}
variable "gke_allow_tcp_loadbalancer_name" {
  description = "Name of the firewall"
  type        = string
}
variable "gke_allow_tcp_loadbalancer_ranges" {
  description = "Source IP ranges"
  type        = set(string)
}
