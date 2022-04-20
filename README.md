# Terraform GCP uptime monitoring module

This is a simple module that creates two resources, a `google_monitoring_uptime_check_config` and its alert `google_monitoring_alert_policy`.

You MUST configure the required "google" provider inside your root module.
