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
| project | Metadata Project | `string` | n/a | yes |
| replication\_type | Account Replication Type | `string` | `"LRS"` | no |
| storage\_tier | Account Tier | `string` | `"Standard"` | no |
| subscription\_id | Subscription ID | `string` | n/a | yes |
| suffix | Metadata Suffix | `string` | n/a | yes |
| tenant\_id | Tenant ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| backend\_container\_registry\_02 | n/a |
| backend\_rancher\_bootstrap\_03 | n/a |
| backend\_rancher\_clusters\_04 | n/a |
| keyvault\_id | n/a |
| keyvault\_name | n/a |
| keyvault\_resource\_group | n/a |
| keyvault\_uri | n/a |
| storage\_access\_key | n/a |
| storage\_account\_name | n/a |
| storage\_container\_name | n/a |
| storage\_resource\_group | n/a |

