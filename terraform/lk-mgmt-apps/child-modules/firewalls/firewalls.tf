module "firewalls" {
  source                   = "../../modules/firewalls"
  direction               = var.direction
  network                 = var.network
  priority                = var.priority
  project                 = var.project
  iap_port                = var.iap_port
  iap_protocol            = var.iap_protocol
  iap_description         = var.iap_description
  iap_name                = var.iap_name
  iap_ranges              = var.iap_ranges
  http_port               = var.http_port
  http_protocol           = var.http_protocol
  http_description        = var.http_description
  http_name               = var.http_name
  http_ranges             = var.http_ranges
  healthcheck_port        = var.healthcheck_port
  healthcheck_protocol    = var.healthcheck_protocol
  healthcheck_description = var.healthcheck_description
  healthcheck_name        = var.healthcheck_name
  healthcheck_ranges      = var.healthcheck_ranges
}