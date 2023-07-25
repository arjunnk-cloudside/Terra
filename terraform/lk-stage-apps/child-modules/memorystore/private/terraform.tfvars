  name                             = "redisid"
  project                          = "lk-mgmt-apps"
  display_name                     = "redisinstance"
  memory_size_gb                   = 5
  tier                             = "STANDARD_HA"
  region                           = "asia-south2"
  replica_count                    = 2
  read_replicas_mode               = "READ_REPLICAS_ENABLED"
  authorized_network               = "vpc-m-services-base"
  connect_mode                     = "PRIVATE_SERVICE_ACCESS"
  auth_enabled                     = "true"
  redis_version                    = "REDIS_6_X"

  labels                           = {env="stage",team="devops",deployed-by= "cloudside" }

  name_network                     = "test-network"

  name_private                     = "privatedb"
  address                          = "10.10.32.0"
  purpose                          = "VPC_PEERING"
  address_type                     = "INTERNAL"
  prefix_length                    = "21"


  /*  
    day                            = "MONDAY"
    hours                          = 0
    minutes                        = 30
    seconds                        = 0
    nanos                          = 0
      
    persistence_mode               = "RDB"
    rdb_snapshot_period            = "TWELVE_HOURS"
  */
