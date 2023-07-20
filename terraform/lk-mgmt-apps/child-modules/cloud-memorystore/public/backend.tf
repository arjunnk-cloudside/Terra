terraform {
  backend "gcs" {
    bucket = "bkt-stage-tfstate"
    prefix = "redis-public"
  }
}
