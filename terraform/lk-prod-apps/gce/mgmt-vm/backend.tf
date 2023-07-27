terraform {
  backend "gcs" {
    bucket = "mgmt-tfstate"
    prefix = "vm/mgmt-vm"
  }
}
