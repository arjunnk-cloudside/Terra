terraform {
  backend "gcs" {
    bucket = "bkt-lk-prod-apps-tfstate"
    prefix = "gke"
  }
}
