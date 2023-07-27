terraform {
  backend "gcs" {
    bucket = "mgmt-tfstate"
    prefix = "vpc"
  }
}
