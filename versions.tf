terraform {

  required_providers {
    datadog = {
      source  = "datadog/datadog"
      version = "~>3.37"
    }

    pagerduty = {
      source  = "PagerDuty/pagerduty"
      version = "~> 3.9"
    }
  }
}
