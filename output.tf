output "datadog_integration_key" {
  description = "Datadog API token"
  value       = try(datadog_integration_pagerduty.this[0].api_token, "")
}
