terraform {
  backend "gcs" {
    bucket = "bkt-lk-dev-apps-tfstate"
    prefix = "cloudnat"
  }
}
