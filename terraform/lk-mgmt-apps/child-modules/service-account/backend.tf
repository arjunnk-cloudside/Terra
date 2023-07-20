terraform {
  backend "gcs" {
    bucket = "bkt-stage-tfstate"
    prefix = "service-account"
  }
}
