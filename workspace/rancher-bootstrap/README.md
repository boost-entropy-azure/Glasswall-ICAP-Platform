## Requirements

| Name | Version |
|------|---------|
| azurerm | =2.30.0 |

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| azure\_region | Metadata Azure Region | `string` | n/a | yes |
| container\_registry\_url | n/a | `string` | `"The Container Registry URL"` | no |
| dns\_zone\_name | Metadata Azure Region | `string` | n/a | yes |
| environment | Metadata Environment | `string` | n/a | yes |
| git\_server\_version | Git server docker tag version | `string` | n/a | yes |
| key\_vault\_name | Key vault name | `string` | n/a | yes |
| key\_vault\_resource\_group | Key vault resource group | `string` | n/a | yes |
| network\_addresses | Network Addresses | `list(string)` | <pre>[<br>  "192.168.0.0/20"<br>]</pre> | no |
| organisation | Metadata Organisation | `string` | n/a | yes |
| project | Metadata Project | `string` | n/a | yes |
| rancher\_agent\_version | Rancher agent version | `string` | `"v2.5.2"` | no |
| rancher\_server\_version | Rancher server version | `string` | `"v2.5.2"` | no |
| rooot\_dns\_resource\_group | DNS Zone Resource Group for the root DNS Zone in Azure. | `string` | `"gw-icap-rg-dns"` | no |
| root\_dns\_zone\_name | DNS Zone Name for the root DNS Zone in Azure. | `string` | `"icap-proxy.curlywurly.me"` | no |
| size | The azure virtual machine size | `string` | `"Standard_DS4_v2"` | no |
| subnet\_address\_prefixes | Subnet CIDR | `list(string)` | <pre>[<br>  "192.168.0.0/22"<br>]</pre> | no |
| subnet\_prefix | Subnet Prefix | `string` | `"192.168.0.0/22"` | no |
| subscription\_id | Subscription ID | `string` | n/a | yes |
| suffix | Metadata Suffix | `string` | n/a | yes |
| tenant\_id | Tenant ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| git\_server\_public\_ips | n/a |
| git\_server\_url | n/a |
| linux\_vm\_private\_ips | n/a |
| linux\_vm\_public\_ips | n/a |
| network | n/a |
| network\_id | n/a |
| public\_key\_openssh | n/a |
| rancher\_admin\_token | n/a |
| rancher\_agent\_version | n/a |
| rancher\_api\_url | n/a |
| rancher\_internal\_api\_url | n/a |
| rancher\_internal\_server\_url | n/a |
| rancher\_password | n/a |
| rancher\_server\_url | n/a |
| rancher\_server\_version | n/a |
| rancher\_suffix | n/a |
| rancher\_token\_id | n/a |
| rancher\_user | n/a |
| region | n/a |
| resource\_group | n/a |
| subnet\_id | n/a |
| subnet\_name | n/a |
| subnet\_prefix | n/a |
| tls\_private\_key | n/a |

