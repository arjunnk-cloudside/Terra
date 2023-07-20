terraform {
  backend "gcs" {
    bucket = "bkt-stage-tfstate"
    prefix = "firewalls"
  }
}