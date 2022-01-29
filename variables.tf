variable "gcp_project" {
  type        = string
  description = "The Google Cloud project ID."
}

variable "gcp_region" {
  type        = string
  description = "The Google Cloud project region."
}

variable "uptime_monitoring_display_name" {
  type        = string
  description = "A human-friendly name for the uptime check configuration. Used for monitoring display_name."
  default     = ""
}

variable "uptime_monitoring_path" {
  type        = string
  description = "The path to the page to run the check against."
  default     = "/"
}

variable "uptime_check_period" {
  type        = string
  description = "How often, in seconds, the uptime check is performed. Currently, the only supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and 900s (15 minutes). Defaults to 300s."
  default     = "60s"
}

variable "uptime_check_timeout" {
  type        = string
  description = "The maximum amount of time to wait for the request to complete (must be between 1 and 60 seconds)."
  default     = "10s"
}

variable "uptime_monitoring_host" {
  type        = string
  description = "A hostname to monitor (without protocol, example: 'www.my-site.com')."
}

variable "uptime_check_regions" {
  type        = list(string)
  description = "The list of regions from which the check will be run. Some regions contain one location, and others contain more than one. If this field is specified, enough regions to include a minimum of 3 locations must be provided, or an error message is returned. Not specifying this field will result in uptime checks running from all regions."
  default     = []
}

variable "alert_threshold_duration" {
  type        = string
  description = "The amount of time that a time series must violate the threshold to be considered failing. Currently, only values that are a multiple of a minute--e.g., 0, 60, 120, or 300 seconds--are supported."
  default     = "60s"
}

variable "alert_threshold_value" {
  type        = number
  description = "A value against which to compare the time series."
  default     = 3
}

variable "alert_notification_channels" {
  type        = list(string)
  description = "Identifies the notification channels to which notifications should be sent when incidents are opened or closed. The syntax of the entries in this field is projects/[PROJECT_ID]/notificationChannels/[CHANNEL_ID]"
}

variable "auth_credentials" {
  type        = map(string)
  description = "If your application is behind a basic auth, here you can specify your username and password in the form of {'username' = 'password'}. We recommend to use an env var for you password and do not store it as data plain text in your repo."
  default     = {}
}
