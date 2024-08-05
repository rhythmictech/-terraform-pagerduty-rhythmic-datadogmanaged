variable "configure_datadog_integration" {
  default     = false
  description = "Flag to create the Datadog integration (must already exist if set to false)"
  type        = bool
}

variable "pagerduty_api_token" {
  default     = null
  description = "PagerDuty API Token (Required if configure_datadog_integration is true)"
  type        = string
}

variable "pagerduty_service_integrations" {
  default     = null
  description = "Map of PagerDuty Datadog integrations"
  type        = map(any)
}
