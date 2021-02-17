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

variable "suffix" {
  description = "A suffix to append to the resource names. Useful in creating multiple deployments on an Azure subscription. Defaults to z1."
  type        = string
  default     = "z1"
}
