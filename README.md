# terraform-pagerduty-rhythmic-datadogmanaged
[![tflint](https://github.com/rhythmictech/terraform-pagerduty-rhythmic-datadogmanaged/workflows/tflint/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-pagerduty-rhythmic-datadogmanaged/actions?query=workflow%3Atflint+event%3Apush+branch%3Amaster)
[![tfsec](https://github.com/rhythmictech/terraform-pagerduty-rhythmic-datadogmanaged/workflows/tfsec/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-pagerduty-rhythmic-datadogmanaged/actions?query=workflow%3Atfsec+event%3Apush+branch%3Amaster)
[![yamllint](https://github.com/rhythmictech/terraform-pagerduty-rhythmic-datadogmanaged/workflows/yamllint/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-pagerduty-rhythmic-datadogmanaged/actions?query=workflow%3Ayamllint+event%3Apush+branch%3Amaster)
[![misspell](https://github.com/rhythmictech/terraform-pagerduty-rhythmic-datadogmanaged/workflows/misspell/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-pagerduty-rhythmic-datadogmanaged/actions?query=workflow%3Amisspell+event%3Apush+branch%3Amaster)
[![pre-commit-check](https://github.com/rhythmictech/terraform-pagerduty-rhythmic-datadogmanaged/workflows/pre-commit-check/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-pagerduty-rhythmic-datadogmanaged/actions?query=workflow%3Apre-commit-check+event%3Apush+branch%3Amaster)
<a href="https://twitter.com/intent/follow?screen_name=RhythmicTech"><img src="https://img.shields.io/twitter/follow/RhythmicTech?style=social&logo=twitter" alt="follow on Twitter"></a>

Binds Datadog and PagerDuty

## Requirements
* DataDog provider
* DataDog API key
* PagerDuty provider
* PagerDuty API key

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_datadog"></a> [datadog](#requirement\_datadog) | ~>3.37 |
| <a name="requirement_pagerduty"></a> [pagerduty](#requirement\_pagerduty) | ~> 3.9 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_datadog"></a> [datadog](#provider\_datadog) | 3.37.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [datadog_integration_pagerduty.this](https://registry.terraform.io/providers/datadog/datadog/latest/docs/resources/integration_pagerduty) | resource |
| [datadog_integration_pagerduty_service_object.this](https://registry.terraform.io/providers/datadog/datadog/latest/docs/resources/integration_pagerduty_service_object) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_configure_datadog_integration"></a> [configure\_datadog\_integration](#input\_configure\_datadog\_integration) | Flag to create the Datadog integration (must already exist if set to false) | `bool` | `true` | no |
| <a name="input_datadog_api_key"></a> [datadog\_api\_key](#input\_datadog\_api\_key) | Datadog API Key (cannot be inferred from the provider, required if configure\_datadog\_integration is true) | `string` | `null` | no |
| <a name="input_pagerduty_service_integrations"></a> [pagerduty\_service\_integrations](#input\_pagerduty\_service\_integrations) | Map of PagerDuty Datadog integrations | `map(any)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_datadog_integration_key"></a> [datadog\_integration\_key](#output\_datadog\_integration\_key) | Datadog API token |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
