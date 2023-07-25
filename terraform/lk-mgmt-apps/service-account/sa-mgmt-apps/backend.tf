terraform {
  backend "gcs" {
    bucket = "mgmt-tfstate"
    prefix = "service-account"
  }
}
