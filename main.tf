resource "datadog_integration_pagerduty" "this" {
  count = var.configure_datadog_integration ? 1 : 0

  subdomain = "rhythmic"
  api_token = var.pagerduty_api_token
}

moved {
  from = datadog_integration_pagerduty_service_object.this
  to   = datadog_integration_pagerduty_service_object.configure_integration
}

resource "datadog_integration_pagerduty_service_object" "configure_integration" {
  for_each = var.configure_datadog_integration ? var.pagerduty_service_integrations : {}

  service_name = each.value.name
  service_key  = each.value.key

  depends_on = [datadog_integration_pagerduty.this]
}

resource "datadog_integration_pagerduty_service_object" "existing_integration" {
  for_each = var.configure_datadog_integration ? {} : var.pagerduty_service_integrations

  service_name = each.value.name
  service_key  = each.value.key
}
