terraform {
  backend "gcs" {
    bucket = "mgmt-tfstate"
    prefix = "gke/gke-mgmt-cluster-01"
  }
}
