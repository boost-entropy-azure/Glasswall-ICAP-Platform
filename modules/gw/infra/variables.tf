
# Common variables
variable "organisation" {
  description = "Metadata Organisation"
  type        = string
}

variable "environment" {
  description = "Metadata Environment"
  type        = string
}
# Rancher API Url
variable "rancher_admin_url" {
  description = "The Rancher API"
  type        = string
}

# Rancher API Url
variable "rancher_internal_api_url" {
  description = "The Rancher API"
  type        = string
}

#Rancher API Admin Token
variable "rancher_admin_token" {
  description = "The Rancher Admin Token"
  type        = string
}

variable "service_name" {
  description = "The name of the service"
  type        = string
}

variable "suffix" {
  description = "The Suffix"
  type        = string
}

variable "dns_zone" {
  description = "The name of the dns zone to add records to"
  type        = string
}

variable "azure_region" {
  description = "The cloud region"
  type        = string
}

variable "fault_domain_count" {
  description = "Azure Fault Domain count"
  type        = string
}

variable "tenant_id" {
  description = "Service Principal tenantID"
  type        = string
}

variable "client_id" {
  description = "Service Principal ClientID"
  type        = string
}

variable "client_secret" {
  description = "Service Principal Secret"
  type        = string
}

variable "subscription_id" {
  description = "Service Principal Subscription ID"
  type        = string
}

variable "cluster_address_space" {
  description = "Subnet ID"
  type        = list(string)
}

variable "cluster_subnet_cidr" {
  description = "Subnet CIDR"
  type        = list(string)
}

variable "public_key_openssh" {
  description = "The Node SSH key"
  type        = string
}

variable "rancher_resource_group" {
  description = "The Rancher Resource Group"
  type        = string
}

variable "rancher_network_id" {
  description = "The Network ID"
  type        = string
}

variable "rancher_network" {
  description = "The Network name"
  type        = string
}

variable "backend_port" {
  description = "Backend Port"
  type        = string
}

variable "public_port" {
  description = "Public Port"
  type        = string
}

variable "cluster_internal_services" {
  description = "Ports to open on the internal load balancer"
  type = map(object({
    protocol      = string
    frontend_port = number
    backend_port  = number
  }))
}

variable "security_group_rules" {
  description = "The rules to add as an object"
  type = map(object({
    name                       = string
    priority                   = string
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
}