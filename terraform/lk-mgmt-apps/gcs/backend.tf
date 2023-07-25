terraform {
  backend "gcs" {
    bucket = "mgmt-tfstate"
    prefix = "gcs"
  }
}