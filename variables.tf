variable "configure_datadog_integration" {
  default     = true
  description = "Flag to create the Datadog integration (must already exist if set to false)"
  type        = bool
}

variable "datadog_api_key" {
  default     = null
  description = "Datadog API Key (cannot be inferred from the provider, required if configure_datadog_integration is true)"
  type        = string
}

variable "pagerduty_service_integrations" {
  default     = null
  description = "Map of PagerDuty Datadog integrations"
  type        = map(any)
}
