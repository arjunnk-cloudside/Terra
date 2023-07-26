name_vpn_gateway             = "vpn-gw-gcp-mgmt-to-aws-uat"
project                      = "lk-mgmt-apps"
region                       = "asia-south2"
network                      = "vpc-mgmt-services-base"
name_router                  = "cr-mgmt-gcp-to-aws-uat-vpn-01"
asn                          = "65000"
ike_version                  = "2"
name_tunnel_1                = "tunnel-gcp-mgmt-to-aws-uat-01"
name_tunnel_2                = "tunnel-gcp-mgmt-to-aws-uat-02"
name_tunnel_3                = "tunnel-gcp-mgmt-to-aws-uat-03"
name_tunnel_4                = "tunnel-gcp-mgmt-to-aws-uat-04"
shared_secret_tunnel_1       = "9HsBgafnkWHhozhFofN2Q3Jo7EQH60Ss"
shared_secret_tunnel_2       = "qq_d3XyO_SNU7omaW9lumBVz5HtyyEIC"
shared_secret_tunnel_3       = "RTEDwMZY8KUqJAArNDnkeaqnvr5upLev"
shared_secret_tunnel_4       = "zcylRRk6I9YcTmQvO4uqz9CMRpohEOSY"
name_peer_vpn_gateway        = "peer-gw-gcp-mgmt-to-aws-uat"
redundancy_type              = "FOUR_IPS_REDUNDANCY"
vir_pvt_gat_out_ip_address_1 = "13.126.94.184"
vir_pvt_gat_out_ip_address_2 = "65.1.118.119"
vir_pvt_gat_out_ip_address_3 = "3.7.241.110"
vir_pvt_gat_out_ip_address_4 = "35.154.70.172"
rout_int_name1               = "rt-if-gcp-mgmt-to-aws-uat-01"
rout_int_name2               = "rt-if-gcp-mgmt-to-aws-uat-02"
rout_int_name3               = "rt-if-gcp-mgmt-to-aws-uat-03"
rout_int_name4               = "rt-if-gcp-mgmt-to-aws-uat-04"
cus_gat_ins_ip_add_1         = "169.254.66.62/30"
cus_gat_ins_ip_add_2         = "169.254.154.82/30"
cus_gat_ins_ip_add_3         = "169.254.45.30/30"
cus_gat_ins_ip_add_4         = "169.254.148.26/30"
router_peer_name1            = "rt-peer-gcp-mgmt-to-aws-uat-01"
router_peer_name2            = "rt-peer-gcp-mgmt-to-aws-uat-02"
router_peer_name3            = "rt-peer-gcp-mgmt-to-aws-uat-03"
router_peer_name4            = "rt-peer-gcp-mgmt-to-aws-uat-04"
vir_pvt_gat_ins_ip_add_1     = "169.254.66.61"
vir_pvt_gat_ins_ip_add_2     = "169.254.154.81"
vir_pvt_gat_ins_ip_add_3     = "169.254.45.29"
vir_pvt_gat_ins_ip_add_4     = "169.254.148.25"
vir_pvt_gat_asn              = "64512"
reg_ip_add                   = "10.40.0.0/16"
