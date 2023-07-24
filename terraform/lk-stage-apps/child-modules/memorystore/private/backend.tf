terraform {
  backend "gcs" {
    bucket = "bkt-lk-stage-apps-tfstate"
    prefix = "redis-private"
  }
}
