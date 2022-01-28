output "http_uptime_monitoring" {
  value = google_monitoring_uptime_check_config.https_uptime
}

output "alert_policy" {
  value = google_monitoring_alert_policy.failure_alert
}
