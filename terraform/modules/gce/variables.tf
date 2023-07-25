variable "image" {
    description = "Boot disk image"
    type        = string
}
variable "can_ip_forward" {
    description = "Enable IP forwarding"
    type        = bool
}
variable "deletion_protection" {
    description = "VM instance can be protected from accidental deletion"
    type        = bool
}
variable "enable_display" {
    description = "Enable to use screen capturing and recording tools"
    type        = bool
}
variable "labels" {
  type        = map(string)
  description = "Labels, provided as a map"
}
variable "zone" {
    description = "Name of the zone"
    type        = string
}
variable "machine_type" {
    description = "Name of the machine"
    type        = string
}
variable "name" {
    description = "Name of the instance"
    type        = string
}
variable "subnetwork_project" {
    description = "Name of the project"
    type        = string
}
variable "network" {
    description = "Name of the network"
    type        = string
}
variable "queue_count" {
    description = "queue count"
    type        = number
}
variable "stack_type" {
    description = "Type of stack IPV4 or IPV6"
    type        = string
}
variable "min_node_cpus" {
    description = "Number of node CPU's"
    type        = number
}
variable "on_host_maintenance" {
    description = "maintenance of VM"
    type        = string
}
variable "preemptible" {
    description = "Preemptible VM's"
    type        = bool
}
variable "email" {
    description = "service account email"
    type        = string
}
variable "scopes" {
    description = "List of API's for accessing"
    type        = list(string)
}
variable "tags" {
    description = "List of tags"
    type        = list(string)
}
variable "subnetwork" {
    description = "Name of the subnetwork"
    type        = string
}
variable "size" {
    description = "Size of the boot disk"
    type        = string
}

