module "vpn_gateway" {
source = "../../modules/vpn_gateway"
name    =   var.name
region  =   var.region
network =   var.network
project =   var.project

}
