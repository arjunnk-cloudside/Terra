    ip_range_name    			 = "gcp-apps-managed-svc-sn"
    address         		 	 = "10.40.0.0"
    address_type     			 = "INTERNAL" 
    prefix_length    			 = "21"
    service          			 = "servicenetworking.googleapis.com"    
    purpose          			 = "VPC_PEERING"
    name             			 = "mysql-01"
    region           			 = "asia-south2"
    project          			 = "lk-mgmt-apps"
    network          			 = "projects/lk-mgmt-apps/global/networks/vpc-m-services-base"
    database_version 			 = "MYSQL_8_0"
    activation_policy			 = "ALWAYS"
    availability_type			 = "ZONAL"
    retained_backups 			 = "7"
    retention_unit   			 = "COUNT"
    binary_log_enabled			 = "false"
    enabled           			 = "false"
   // location          		 = "us"
    point_in_time_recovery_enabled	 = "false"
    start_time                    	 = "15:00"
    transaction_log_retention_days	 = "7"
    disk_autoresize      		 = "true"
    disk_autoresize_limit		 = "0"
    disk_size            		 = "20"
    disk_type            		 = "PD_SSD"
    ipv4_enabled   			 = "false"  
    private_network			 = "projects/lk-mgmt-apps/global/networks/vpc-m-services-base"
    require_ssl    			 = "false"
    authorized_network_name		 = "vpc-m-services-base"
    authorized_network_value		 = "10.10.16.0/21"
    zone           			 = "asia-south2-b"
    day            			 = "5"
    hour           			 = "18"
    pricing_plan   			 = "PER_USE" 
    tier           			 = "db-custom-2-4096"
    user_labels    			 = {env="mgmt",team="devops",deployed-by="cloudside"}
    deletion_protection 		 = true
