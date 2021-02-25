## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| azurerm | =2.30.0 |
| azurerm | ~> 2.30.0 |
| rancher2 | 1.10.3 |

## Providers

| Name | Version |
|------|---------|
| time | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| admin\_cluster\_backend\_port | Public Port | `number` | `443` | no |
| admin\_cluster\_public\_port | Backend Port | `number` | `32323` | no |
| admin\_cluster\_stage1\_apps | A list of apps | <pre>map(object({<br>    namespace        = string<br>    catalog_name     = string<br>    template_name    = string<br>    create_namespace = bool<br>    system_app       = bool<br>  }))</pre> | <pre>{<br>  "argocd": {<br>    "catalog_name": "icap-catalog",<br>    "create_namespace": true,<br>    "namespace": "argo-cd",<br>    "system_app": true,<br>    "template_name": "argo-cd"<br>  },<br>  "system": {<br>    "catalog_name": "icap-catalog",<br>    "create_namespace": false,<br>    "namespace": "kube-system",<br>    "system_app": true,<br>    "template_name": "systemclusterrole"<br>  }<br>}</pre> | no |
| admin\_internal\_services | Ports to open on the internal load balancer | <pre>map(object({<br>    protocol      = string<br>    frontend_port = number<br>    backend_port  = number<br>  }))</pre> | <pre>{<br>  "PolicyUpdateService": {<br>    "backend_port": 32324,<br>    "frontend_port": 32324,<br>    "protocol": "tcp"<br>  }<br>}</pre> | no |
| azure\_region\_r1 | Metadata Azure Region | `string` | `"northeurope"` | no |
| azure\_region\_r2 | Metadata Azure Region | `string` | `"ukwest"` | no |
| backend\_port | Backend Port | `number` | `32323` | no |
| branch | The source branch to link with the backend for other modules in the same branch | `string` | n/a | yes |
| dns\_zone | The name of the dns zone to add records to | `string` | n/a | yes |
| environment | Metadata Environment | `string` | n/a | yes |
| filedrop\_cluster\_address\_space\_r1 | Network CIDR | `list(string)` | <pre>[<br>  "192.168.64.0/20"<br>]</pre> | no |
| filedrop\_cluster\_backend\_port | Public Port | `number` | `443` | no |
| filedrop\_cluster\_public\_port | Backend Port | `number` | `32323` | no |
| filedrop\_cluster\_subnet\_cidr\_r1 | Subnet CIDR | `list(string)` | <pre>[<br>  "192.168.64.0/21"<br>]</pre> | no |
| filedrop\_cluster\_subnet\_prefix\_r1 | Subnet CIDR | `string` | `"192.168.64.0/21"` | no |
| filedrop\_internal\_services | Ports to open on the internal load balancer | <pre>map(object({<br>    protocol      = string<br>    frontend_port = number<br>    backend_port  = number<br>  }))</pre> | <pre>{<br>  "PolicyUpdateService": {<br>    "backend_port": 32324,<br>    "frontend_port": 32324,<br>    "protocol": "tcp"<br>  }<br>}</pre> | no |
| git\_server\_url | n/a | `string` | n/a | yes |
| icap\_cluster\_address\_space\_r1 | Network CIDR | `list(string)` | <pre>[<br>  "192.168.32.0/20"<br>]</pre> | no |
| icap\_cluster\_address\_space\_r2 | Network CIDR | `list(string)` | <pre>[<br>  "192.168.48.0/20"<br>]</pre> | no |
| icap\_cluster\_quantity | Total clusters in a region | `number` | `1` | no |
| icap\_cluster\_stage1\_apps | A list of apps | <pre>map(object({<br>    namespace        = string<br>    catalog_name     = string<br>    template_name    = string<br>    create_namespace = bool<br>    system_app       = bool<br>  }))</pre> | <pre>{<br>  "argocd": {<br>    "catalog_name": "icap-catalog",<br>    "create_namespace": true,<br>    "namespace": "argo-cd",<br>    "system_app": true,<br>    "template_name": "argo-cd"<br>  },<br>  "rabbitmq_operator": {<br>    "catalog_name": "icap-catalog",<br>    "create_namespace": true,<br>    "namespace": "rabbitmq-system",<br>    "system_app": true,<br>    "template_name": "rabbitmq-operator"<br>  },<br>  "system": {<br>    "catalog_name": "icap-catalog",<br>    "create_namespace": false,<br>    "namespace": "kube-system",<br>    "system_app": true,<br>    "template_name": "systemclusterrole"<br>  }<br>}</pre> | no |
| icap\_cluster\_subnet\_cidr\_r1 | Subnet CIDR | `list(string)` | <pre>[<br>  "192.168.32.0/21"<br>]</pre> | no |
| icap\_cluster\_subnet\_cidr\_r2 | Subnet CIDR | `list(string)` | <pre>[<br>  "192.168.48.0/21"<br>]</pre> | no |
| icap\_cluster\_subnet\_prefix\_r1 | Subnet CIDR | `string` | `"192.168.32.0/21"` | no |
| icap\_cluster\_subnet\_prefix\_r2 | Subnet CIDR | `string` | `"192.168.48.0/21"` | no |
| icap\_cluster\_suffix\_r1 | Cluster suffix for the region | `string` | `"z"` | no |
| icap\_cluster\_suffix\_r2 | Cluster suffix for the region | `string` | `"y"` | no |
| icap\_internal\_services | Ports to open on the internal load balancer | <pre>map(object({<br>    protocol      = string<br>    frontend_port = number<br>    backend_port  = number<br>  }))</pre> | <pre>{<br>  "PolicyUpdateService": {<br>    "backend_port": 32324,<br>    "frontend_port": 32324,<br>    "protocol": "tcp"<br>  }<br>}</pre> | no |
| icap\_master\_scaleset\_sku\_capacity | Total master servers in a cluster in a region | `number` | `1` | no |
| icap\_worker\_scaleset\_sku\_capacity | Total worker servers in a cluster in a region | `number` | `1` | no |
| organisation | Metadata Organisation | `string` | `"gw"` | no |
| os\_offer | OS Offer | `string` | `"RHEL"` | no |
| os\_publisher | OS Publisher | `string` | `"RedHat"` | no |
| os\_sku | OS SKU | `string` | `"7-LVM"` | no |
| os\_version | OS Version | `string` | `"latest"` | no |
| project | Metadata Project | `string` | `"icap"` | no |
| public\_key\_openssh | n/a | `string` | n/a | yes |
| public\_port | Public Port | `number` | `443` | no |
| rancher\_admin\_token | n/a | `string` | n/a | yes |
| rancher\_agent\_version | n/a | `string` | n/a | yes |
| rancher\_api\_url | n/a | `string` | n/a | yes |
| rancher\_internal\_api\_url | n/a | `string` | n/a | yes |
| rancher\_internal\_ip | n/a | `string` | n/a | yes |
| rancher\_network | n/a | `string` | n/a | yes |
| rancher\_network\_id | n/a | `string` | n/a | yes |
| rancher\_network\_name | n/a | `string` | n/a | yes |
| rancher\_region | n/a | `string` | n/a | yes |
| rancher\_resource\_group | n/a | `string` | n/a | yes |
| rancher\_server\_name | n/a | `string` | n/a | yes |
| rancher\_subnet\_id | n/a | `string` | n/a | yes |
| rancher\_subnet\_name | n/a | `string` | n/a | yes |
| rancher\_subnet\_prefix | n/a | `string` | n/a | yes |
| rancher\_suffix | n/a | `string` | n/a | yes |
| subscription\_id | Subscription ID | `string` | n/a | yes |
| tenant\_id | Tenant ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| icap\_cluster\_worker\_lb\_dns\_names | n/a |
| icap\_cluster\_worker\_lb\_ip\_addr | n/a |
| icap\_project\_ids | n/a |
| icap\_resource\_groups | n/a |
| icap\_system\_ids | n/a |

