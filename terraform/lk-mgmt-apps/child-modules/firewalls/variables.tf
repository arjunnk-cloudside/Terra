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