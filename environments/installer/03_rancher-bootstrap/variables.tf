variable "organisation" {
  description = "An identifier for your orginzation, used in resource naming. Should be no longer than 4 character."
  type        = string
}

variable "tenant_id" {
  description = "The tennant id for your Azure account."
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

variable "rancher_suffix" {
  description = "A suffix to append to the rancher resource names. Useful in creating multiple deployments on an Azure subscription. Defaults to a1."
  type        = string
  default     = "a1"
}

variable "container_registry_url" {
  description = "The url of the Azure Container Registry created in step 02_container-registry. Should be like myregistry.azurecr.io."
  type        = string
}

variable "dns_zone_name" {
  description = "The DNS zone name to link the rancer resources to. such as securestuff.example.com."
  type        = string
}

variable "suffix" {
  description = "A suffix used to create resources in stage 01 and 02. Defaults to z1."
  type        = string
  default     = "z1"
}
