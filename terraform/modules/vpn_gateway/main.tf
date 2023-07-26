terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

module "vpn_gateway" {
name    =   var.name
region  =   var.region
network =   var.network
project =   var.project

}