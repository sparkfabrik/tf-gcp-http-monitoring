# Terraform GCP uptime monitoring module

![tflint status](https://github.com/sparkfabrik/terraform-sparkfabrik-gcp-http-monitoring/actions/workflows/tflint.yml/badge.svg?branch=main)

This is a simple module that creates two resources, a `google_monitoring_uptime_check_config` and its alert `google_monitoring_alert_policy`.

You MUST configure the required "google" provider inside your root module.

This module is provided without any kind of warranty and is GPL3 licensed.

<!-- BEGIN_TF_DOCS -->
## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | >= 3.0 |
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 3.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alert_notification_channels"></a> [alert\_notification\_channels](#input\_alert\_notification\_channels) | Identifies the notification channels to which notifications should be sent when incidents are opened or closed. The syntax of the entries in this field is projects/[PROJECT\_ID]/notificationChannels/[CHANNEL\_ID] | `list(string)` | n/a | yes |
| <a name="input_alert_threshold_duration"></a> [alert\_threshold\_duration](#input\_alert\_threshold\_duration) | The amount of time that a time series must violate the threshold to be considered failing. Currently, only values that are a multiple of a minute--e.g., 0, 60, 120, or 300 seconds--are supported. | `string` | `"60s"` | no |
| <a name="input_alert_threshold_value"></a> [alert\_threshold\_value](#input\_alert\_threshold\_value) | A value against which to compare the time series. | `number` | `2` | no |
| <a name="input_auth_password"></a> [auth\_password](#input\_auth\_password) | If your application is behind a basic auth, here you can specify your password. We recommend to use an env var for you password and do not store it as data plain text in your repo. | `string` | `""` | no |
| <a name="input_auth_username"></a> [auth\_username](#input\_auth\_username) | If your application is behind a basic auth, here you can specify your username. We recommend to use an env var for you password and do not store it as data plain text in your repo. | `string` | `""` | no |
| <a name="input_gcp_project"></a> [gcp\_project](#input\_gcp\_project) | The Google Cloud project ID. | `string` | n/a | yes |
| <a name="input_uptime_check_period"></a> [uptime\_check\_period](#input\_uptime\_check\_period) | How often, in seconds, the uptime check is performed. Currently, the only supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and 900s (15 minutes). Defaults to 300s. | `string` | `"60s"` | no |
| <a name="input_uptime_check_regions"></a> [uptime\_check\_regions](#input\_uptime\_check\_regions) | The list of regions from which the check will be run. Some regions contain one location, and others contain more than one. If this field is specified, enough regions to include a minimum of 3 locations must be provided, or an error message is returned. Not specifying this field will result in uptime checks running from all regions. | `list(string)` | <pre>[<br>  "ASIA_PACIFIC",<br> "EUROPE",<br>  "SOUTH_AMERICA"<br>]</pre> | no |
| <a name="input_uptime_check_timeout"></a> [uptime\_check\_timeout](#input\_uptime\_check\_timeout) | The maximum amount of time to wait for the request to complete (must be between 1 and 60 seconds). | `string` | `"10s"` | no |
| <a name="input_uptime_monitoring_display_name"></a> [uptime\_monitoring\_display\_name](#input\_uptime\_monitoring\_display\_name) | A human-friendly name for the uptime check configuration. Used for monitoring display\_name. | `string` | `""` | no |
| <a name="input_uptime_monitoring_host"></a> [uptime\_monitoring\_host](#input\_uptime\_monitoring\_host) | A hostname to monitor (without protocol, example: 'www.my-site.com'). | `string` | n/a | yes |
| <a name="input_uptime_monitoring_path"></a> [uptime\_monitoring\_path](#input\_uptime\_monitoring\_path) | The path to the page to run the check against. | `string` | `"/"` | no |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alert_policy_name"></a> [alert\_policy\_name](#output\_alert\_policy\_name) | n/a |
| <a name="output_http_uptime_monitoring_name"></a> [http\_uptime\_monitoring\_name](#output\_http\_uptime\_monitoring\_name) | n/a |
## Resources

| Name | Type |
|------|------|
| [google_monitoring_alert_policy.failure_alert](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy) | resource |
| [google_monitoring_uptime_check_config.https_uptime](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_uptime_check_config) | resource |
## Modules

No modules.

<!-- END_TF_DOCS -->
