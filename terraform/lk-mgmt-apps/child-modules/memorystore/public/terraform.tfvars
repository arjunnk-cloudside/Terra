
  name                             = "redisid"
  project                          = "cloudside-academy"
  display_name                     = "redisinstance"
  memory_size_gb                   = 5
  tier                             = "STANDARD_HA"
  region                           = "us-central1"
  replica_count                    = 2
  read_replicas_mode               = "READ_REPLICAS_ENABLED"
  authorized_network               = "default"
  connect_mode                     = "DIRECT_PEERING"
  auth_enabled                     = "true"
  redis_version                    = "REDIS_6_X"

  labels                           = {env = "dev"}

  /*  
  day                              = "MONDAY"
    hours                          = 0
    minutes                        = 30
    seconds                        = 0
    nanos                          = 0
      
    persistence_mode               = "RDB"
    rdb_snapshot_period            = "TWELVE_HOURS"
  */
