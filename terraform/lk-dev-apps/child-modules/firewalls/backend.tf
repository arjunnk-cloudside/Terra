terraform {
  backend "gcs" {
    bucket = "bkt-lk-dev-apps-tfstate"
    prefix = "firewalls"
  }
}
