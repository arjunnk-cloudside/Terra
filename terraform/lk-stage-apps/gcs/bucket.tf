module "gcs" {
    source                        = "../../modules/gcs"
    name                          = var.name
    location                      = var.location
    project                       = var.project
    uniform_bucket_level_access   = var.uniform_bucket_level_access
    labels                        = var.labels
}