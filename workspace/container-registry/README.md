## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| azurerm | =2.30.0 |
| azurerm | ~> 2.30.0 |

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| azure\_region | Metadata Azure Region | `string` | n/a | yes |
| environment | Metadata Environment | `string` | n/a | yes |
| organisation | Metadata Organisation | `string` | n/a | yes |
| project | Metadata Project | `string` | `"terraform"` | no |
| replication\_type | Account Replication Type | `string` | `"LRS"` | no |
| storage\_tier | Account Tier | `string` | `"Standard"` | no |
| subscription\_id | Subscription ID | `string` | n/a | yes |
| suffix | Metadata Suffix | `string` | n/a | yes |
| tenant\_id | Tenant ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| container\_registry\_url | n/a |

