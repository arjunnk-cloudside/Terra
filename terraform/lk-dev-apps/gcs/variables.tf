variable "name" {
  description = "Name of the gcs bucket"
  type        = string
}

variable "project" {
  description = "Name of the project"
  type        = string
}

variable "location" {
  description = "Name of region"
    type        = string
}

variable "uniform_bucket_level_access" {
  description = "Uniform Bucket level Access"
    type        = bool
}

variable "versioning_enabled" {
  description = "Enable or disable Versioning"
    type        = bool
}

variable "labels" {
  type        = map(string)
  description = "Labels, provided as a map"
}
