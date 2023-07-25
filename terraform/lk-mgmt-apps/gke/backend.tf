terraform {
  backend "gcs" {
    bucket = "bkt-lk-mgmt-apps-tfstate"
    prefix = "gke"
  }
}
