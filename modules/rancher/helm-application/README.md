## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| rancher2 | 1.10.3 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| admin\_cluster\_lb\_name | Admin cluster load balancer hostname | `string` | `""` | no |
| catalog\_name | The catalog name | `string` | n/a | yes |
| create\_namespace | n/a | `bool` | n/a | yes |
| docker\_config\_json | The docker config json | `string` | n/a | yes |
| helm\_chart\_repo\_url | The git repo url | `string` | n/a | yes |
| namespace | Namespace | `string` | n/a | yes |
| ncfs\_endpoint\_csv | The list of cluster endpoints in csv for ncfs event service | `string` | n/a | yes |
| policy\_update\_endpoint\_csv | The list of cluster endpoints in csv for policy update service | `string` | n/a | yes |
| project\_id | The project id | `string` | n/a | yes |
| system\_app | n/a | `bool` | n/a | yes |
| system\_id | The system project id | `string` | n/a | yes |
| template\_name | Helm template name | `string` | n/a | yes |
| transaction\_event\_endpoint\_csv | The list of cluster endpoints in csv for transaction event service | `string` | n/a | yes |

## Outputs

No output.

