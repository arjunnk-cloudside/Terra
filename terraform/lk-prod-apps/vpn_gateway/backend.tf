 terraform {
   backend "gcs" {
     bucket = "mgmt-tfstate"
     prefix = "vpn-gateway/vpn-gw-gcp-mgmt-to-aws-uat"
   }
 }
