resource "google_storage_bucket" "gcs_bucket" {
  name                          = var.name
  location                      = var.location
  project                       = var.project
  uniform_bucket_level_access   = var.uniform_bucket_level_access
  labels                        = var.labels

  versioning {
    enabled = true
  }
}