terraform {
  backend "gcs" {
    bucket = "mgmt-tfstate"
    prefix = "vpn-gateway/tunnel-peer-gateway"
  }
}
