variable "organisation" {
  description = "An identifier for your organization, used in resource naming. Should be no longer than 4 character."
  type        = string
}

variable "tenant_id" {
  description = "The tenant id for your Azure account."
  type        = string
}

variable "subscription_id" {
  description = "The subscription id for your Azure account."
  type        = string
}

variable "azure_region" {
  description = "The Azure Region to deploy the infrastructure into."
  type        = string
}

variable "environment" {
  description = "An environment name for this deployment, used in resource naming."
  type        = string
  default     = "prd"
}

variable "suffix" {
  description = "A suffix to append to the resource names. Useful in creating multiple deployments on an Azure subscription. Defaults to z1."
  type        = string
  default     = "z1"
}

variable "rancher_suffix" {
  description = "A suffix to append to the rancher resource names. Useful in creating multiple deployments on an Azure subscription. Defaults to a1."
  type        = string
  default     = "a1"
}

variable "container_registry_url" {
  description = "The url of the Azure Container Registry created in step 02_container-registry. Should be like myregistry.azurecr.io."
  type        = string
}

variable "cluster_1_suffix" {
  description = "A suffix to append to the cluster 1s resource names. Useful in creating multiple deployments on an Azure subscription. Defaults to b."
  type        = string
  default     = "b"
}

variable "cluster_2_suffix" {
  description = "A suffix to append to the cluster 2s resource names. Useful in creating multiple deployments on an Azure subscription. Defaults to c."
  type        = string
  default     = "c"
}

variable "cluster_3_suffix" {
  description = "A suffix to append to the cluster 3s resource names. Useful in creating multiple deployments on an Azure subscription. Defaults to d."
  type        = string
  default     = "d"
}

variable "icap_cluster_quantity" {
  description = "The number of icap clusters to run. This will deploy x clusters per region. Defaults to 1."
  type        = string
  default     = 1
}

variable "icap_master_quantity" {
  description = "The number of icap masters to run in each cluster. This will deploy x masters per cluster. Defaults to 1."
  type        = string
  default     = 1
}

variable "icap_worker_quantity" {
  description = "The number of icap workers to run in each cluster. This will deploy x workers per cluster. Defaults to 1."
  type        = string
  default     = 1
}

variable "root_dns_zone_name" {
  description = "DNS Zone Name for the root DNS Zone in Azure. This is the preexisting DNS Zone in your Azure subscription."
  type        = string
}

variable "rooot_dns_resource_group" {
  description = "DNS Zone Resource Group for the root DNS Zone in Azure."
  type        = string
}
