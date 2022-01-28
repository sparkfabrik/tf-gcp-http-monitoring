provider "google" {
  project = var.gcp_project
  region  = var.gcp_region
}

module "checks" {
  source                         = "./modules/check_and_alert"
  for_each                       = toset(var.uptime_monitoring_hosts)
  uptime_monitoring_host         = each.value
  uptime_monitoring_display_name = var.uptime_monitoring_display_name
  uptime_monitoring_path         = var.uptime_monitoring_path
  uptime_check_timeout           = var.uptime_check_timeout
  uptime_check_period            = var.uptime_check_period
  uptime_check_regions           = var.uptime_check_regions
  alert_threshold_duration       = var.alert_threshold_duration
  alert_threshold_value          = var.alert_threshold_value
  alert_notification_channels    = var.alert_notification_channels
  gcp_project                    = var.gcp_project
  auth_credentials               = var.auth_credentials
}
