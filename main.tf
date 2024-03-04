resource "datadog_integration_pagerduty" "this" {
  count = var.configure_datadog_integration ? 1 : 0

  subdomain = "rhythmic"
  api_token = var.datadog_api_key
}

resource "datadog_integration_pagerduty_service_object" "this" {
  for_each = var.pagerduty_service_integrations

  service_name = each.value.name
  service_key  = each.value.key
  depends_on   = [datadog_integration_pagerduty.this]
}
