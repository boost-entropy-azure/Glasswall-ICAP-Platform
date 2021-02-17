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

variable "environment" {
  description = "An environment name for this deployment, used in resource naming."
  type        = string
  default     = "prd"
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
  description = "The number of icap workets to run in each cluster. This will deploy x workers per cluster. Defaults to 1."
  type        = string
  default     = 1
}

variable "dns_zone_name" {
  description = "The DNS zone name to link the rancer resources to. Needs to be an existing DNS zone name."
  type        = string
}

variable "suffix" {
  description = "A suffix used to create resources in stage 01 and 02. Defaults to z1."
  type        = string
  default     = "z1"
}
