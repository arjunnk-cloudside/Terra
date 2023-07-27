variable "name_vpn_gateway" {
  type        = string
  description = "Name of the vpn gateway"
}

variable "project" {
  type        = string
  description = "project of the resource"
}

variable "region" {
  type        = string
  description = "region of the resource"
}

variable "name_router" {
  type        = string
  description = "name of the cloud router"
}

variable "network" {
  type        = string
  description = "name of the network to which this cloud router belongs"
}

variable "asn" {
  type        = number
  description = "Customer Gateway ASN"
}

variable "ike_version" {
  type        = number
  description = "IKE protocol version to use when establishing the VPN tunnel with peer VPN gateway"
}

variable "name_tunnel_1" {
  type        = string
  description = "name of the first vpn tunnel"
}

variable "name_tunnel_2" {
  type        = string
  description = "name of the second vpn tunnel"
}

variable "name_tunnel_3" {
  type        = string
  description = "name of the third vpn tunnel"
}

variable "name_tunnel_4" {
  type        = string
  description = "name of the fourth vpn tunnel"
}

variable "shared_secret_tunnel_1" {
  type        = string
  description = "Shared secret used to set the secure session between the Cloud VPN gateway and the peer VPN gateway(Shared secret from the configuration file)"
}

variable "shared_secret_tunnel_2" {
  type        = string
  description = "Shared secret used to set the secure session between the Cloud VPN gateway and the peer VPN gateway(Shared secret from the configuration file)"
}

variable "shared_secret_tunnel_3" {
  type        = string
  description = "Shared secret used to set the secure session between the Cloud VPN gateway and the peer VPN gateway(Shared secret from the configuration file)"
}

variable "shared_secret_tunnel_4" {
  type        = string
  description = "Shared secret used to set the secure session between the Cloud VPN gateway and the peer VPN gateway(Shared secret from the configuration file)"
}

variable "name_peer_vpn_gateway" {
  type        = string
  description = "name of the peer vpn gateway"
}

variable "redundancy_type" {
  type        = string
  description = "the redundancy type of the peer VPN gateway Possible values are FOUR_IPS_REDUNDANCY, SINGLE_IP_INTERNALLY_REDUNDANT, and TWO_IPS_REDUNDANCY"
}

variable "vir_pvt_gat_out_ip_address_1" {
  type        = string
  description = "Outside IP address of Virtual private gateway from downloaded vpn configuration file "
}

variable "vir_pvt_gat_out_ip_address_2" {
  type        = string
  description = "Outside IP address of Virtual private gateway from downloaded vpn configuration file"
}

variable "vir_pvt_gat_out_ip_address_3" {
  type        = string
  description = "Outside IP address of Virtual private gateway from downloaded vpn configuration file"
}

variable "vir_pvt_gat_out_ip_address_4" {
  type        = string
  description = "Outside IP address of Virtual private gateway from downloaded vpn configuration file"
}
variable "rout_int_name1" {
  type        = string
  description = "Router interface name in the external VPN gateway"
}
variable "rout_int_name2" {
  type        = string
  description = "Router interface name in the external VPN gateway"
}
variable "rout_int_name3" {
  type        = string
  description = "Router interface name  in the external VPN gateway"
}
variable "rout_int_name4" {
  type        = string
  description = "Router interface name in the external VPN gateway"
}
variable "cus_gat_ins_ip_add_1" {
  type        = string
  description = "Customer gateway inside ip address from downloaded vpn configuration file"
}
variable "cus_gat_ins_ip_add_2" {
  type        = string
  description = "Customer gateway inside ip address from downloaded vpn configuration file"
}
variable "cus_gat_ins_ip_add_3" {
  type        = string
  description = "Customer gateway inside ip address from downloaded vpn configuration file"
}
variable "cus_gat_ins_ip_add_4" {
  type        = string
  description = "Customer gateway inside ip address from downloaded vpn configuration file"
}
variable "router_peer_name1" {
  type        = string
  description = "Router peer name for virtual private gateway"
}
variable "router_peer_name2" {
  type        = string
  description = "Router peer name for virtual private gateway"
}
variable "router_peer_name3" {
  type        = string
  description = "Router peer name for virtual private gateway"
}
variable "router_peer_name4" {
  type        = string
  description = "Router peer name for virtual private gateway"
}
variable "vir_pvt_gat_ins_ip_add_1" {
  type        = string
  description = "Virtual private gateway inside ip address from downloaded vpn configuration file"
}
variable "vir_pvt_gat_ins_ip_add_2" {
  type        = string
  description = "Virtual private gateway inside ip address from downloaded vpn configuration file"
}
variable "vir_pvt_gat_ins_ip_add_3" {
  type        = string
  description = "Virtual private gateway inside ip address from downloaded vpn configuration file"
}
variable "vir_pvt_gat_ins_ip_add_4" {
  type        = string
  description = "Virtual private gateway inside ip address from downloaded vpn configuration file"
}
variable "vir_pvt_gat_asn" {
  type        = number
  description = "Virtual private gateway asn number from downloaded vpn configuration file"
}
variable "reg_ip_add" {
  type        = string
  description = "Region internal ip address from vpc where the resource is made"
}