variable "gcp_project" {
  type        = string
  description = "The Google Cloud project ID."
}

variable "uptime_monitoring_display_name" {
  type        = string
  description = "A human-friendly name for the uptime check configuration. Used for monitoring display_name."
}

variable "uptime_monitoring_path" {
  type        = string
  description = "The path to the page to run the check against."
}

variable "uptime_check_period" {
  type        = string
  description = "How often, in seconds, the uptime check is performed. Currently, the only supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and 900s (15 minutes). Defaults to 300s."
}

variable "uptime_check_timeout" {
  type        = string
  description = "The maximum amount of time to wait for the request to complete (must be between 1 and 60 seconds)."
}

variable "uptime_monitoring_host" {
  type        = string
  description = "The hostname to monitor (without protocol, example: www.my-site.com)."
}

variable "alert_threshold_duration" {
  type        = string
  description = "The amount of time that a time series must violate the threshold to be considered failing. Currently, only values that are a multiple of a minute--e.g., 0, 60, 120, or 300 seconds--are supported."
}

variable "alert_notification_channels" {
  type        = list(string)
  description = "Identifies the notification channels to which notifications should be sent when incidents are opened or closed. The syntax of the entries in this field is projects/[PROJECT_ID]/notificationChannels/[CHANNEL_ID]"
}

