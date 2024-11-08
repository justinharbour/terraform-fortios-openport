# FortiOS Firewall Policy Module

This module manages FortiOS firewall policies through Terraform Enterprise.

## Requirements

* Terraform >= 0.13.0
* FortiOS Provider >= 1.16.0

## Providers

| Name | Version |
|------|---------|
| fortios | >= 1.16.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| fortios_hostname | The hostname or IP of the FortiOS firewall | `string` | n/a | yes |
| api_key | API key for authentication | `string` | n/a | yes |
| policy_name | Name of the firewall policy | `string` | n/a | yes |
| source_interface | Source interface for the policy | `string` | n/a | yes |
| destination_interface | Destination interface for the policy | `string` | n/a | yes |
| source_address | Source address for the policy | `string` | n/a | yes |
| destination_address | Destination address for the policy | `string` | n/a | yes |
| service_name | Service to allow | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| policy_id | The ID of the created firewall policy |

## Example Usage

```hcl
module "firewall_policy" {
  source = "YOUR-REGISTRY-PATH"

  fortios_hostname     = "firewall.example.com"
  api_key             = var.fortios_api_key
  policy_name         = "allow-https"
  source_interface    = "port1"
  destination_interface = "port2"
  source_address      = "all"
  destination_address = "all"
  service_name        = "HTTPS"
}