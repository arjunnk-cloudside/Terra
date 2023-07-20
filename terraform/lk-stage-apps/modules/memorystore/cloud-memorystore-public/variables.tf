variable "name" {
  type    = string
  description = "The ID of the redis instance"
}

variable "display_name" {
  type    = string
  description = "An arbitrary and optional user-provided name for the instance"
}

variable "memory_size_gb" {
  type    = number
  description = "Redis memory size in GiB"
}

variable "tier" {
  type    = string
  description = "The service tier of the instance"
}

variable "replica_count" {
  type    = number
  description = "The number of replica nodes"
}   

variable "read_replicas_mode" {
  type    = string
  description = "Read replica mode"
}

variable "project" {
  type    = string
  description = "ID of the project in which the resource will be launched"
}

variable "authorized_network" {
  type    = string
  description = "The full name of the Google Compute Engine network to which the instance is connected"
}

variable "connect_mode" {
  type    = string
  description = "The connection mode of the Redis instance"
}

variable "auth_enabled" {
  type    = string
  description = "Indicates whether OSS Redis AUTH is enabled for the instance"
} 

variable "region" {
  type    = string
  description = "The name of the Redis region of the instance"
}

variable "redis_version" {
  type    = string
  description = "The version of Redis software"
}

/*
variable "day" {
  type    = string
  description = "The day of week that maintenance updates occur"
}

variable "hours" {
  type    = number
  description = "Hours of day in 24 hour format"
}

variable "minutes" {
  type    = number
  description = "Minutes of hour of day"
}

variable "seconds" {
  type    = number
  description = " Seconds of minutes of the time"
}

variable "nanos" {
  type    = number
  description = "Fractions of seconds in nanoseconds"
}

variable "persistence_mode" {
  type    = string
  description = "Controls whether Persistence features are enabled"
}

variable "rdb_snapshot_period" {
  type    = string
  description = "Available snapshot periods for scheduling"
}
*/

variable "labels" {
  type    = map(string)
  description = "Labels, provided as a map"
}