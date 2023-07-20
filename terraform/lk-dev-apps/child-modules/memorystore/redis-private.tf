module "redis-private"{
    source = "../../../modules/memorystore"


  name                             = var.name
  project                          = var.project
  display_name                     = var.display_name
  memory_size_gb                   = var.memory_size_gb
  tier                             = var.tier
  region                           = var.region
  replica_count                    = var.replica_count
  read_replicas_mode               = var.read_replicas_mode
  authorized_network               = var.authorized_network
  connect_mode                     = var.connect_mode
  auth_enabled                     = var.auth_enabled
  redis_version                    = var.redis_version

  labels                           = merge(var.labels)

  /* 
    
        day                        = var.day
        hours                      = var.hours
        minutes                    = var.minutes
        seconds                    = var.seconds
        nanos                      = var.nanos
      
    persistence_mode               = var.persistence_mode
    rdb_snapshot_period            = var.rdb_snapshot_period
  */

  name_network                     = var.name_network

  name_private                     = var.name_private
  address                          = var.address
  purpose                          = var.purpose
  address_type                     = var.address_type
  prefix_length                    = var.prefix_length
  }
