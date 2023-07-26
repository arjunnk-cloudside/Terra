terraform {
  backend "gcs" {
    bucket = "bkt-lk-mgmt-apps-tfstate"
    prefix = "tunnel_peer_gateway"
  }
}