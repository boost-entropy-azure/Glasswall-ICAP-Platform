
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

variable "rancher_network" {
  description = "The Rancher Network"
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

variable "rancher_resource_group" {
  description = "The rancher resource group"
  type        = string
}

variable "cluster_network_name" {
  description = "Subnet Name"
  type        = string
}

variable "cluster_subnet_name" {
  description = "Subnet Name"
  type        = string
}

variable "cluster_subnet_id" {
  description = "Subnet ID"
  type        = string
}

/*
variable "cluster_subnet_cidr" {
  description = "Subnet CIDR"
  type        = list(string)
}
*/
variable "cluster_subnet_prefix" {
  description = "Subnet Prefix"
  type        = string
}

variable "public_key_openssh" {
  description = "The Node SSH key"
  type        = string
}

variable "rancher_network_id" {
  description = "The Network ID"
  type        = string
}

variable "os_publisher" {
  description = "OS Publisher"
  type        = string
}

variable "os_offer" {
  description = "OS Offer"
  type        = string
}

variable "os_sku" {
  description = "OS SKU"
  type        = string
}

variable "os_version" {
  description = "OS Version"
  type        = string
}

variable "master_scaleset_size" {
  description = "The Instance Size"
  type        = string
}

variable "master_scaleset_admin_user" {
  description = "The Instance Admin User"
  type        = string
}

variable "master_scaleset_sku_capacity" {
  description = "Total instances to begin with"
  type        = number
}

variable "worker_scaleset_size" {
  description = "The Instance Size"
  type        = string
}

variable "worker_scaleset_admin_user" {
  description = "The Instance Size"
  type        = string
}

variable "worker_scaleset_sku_capacity" {
  description = "The Instance Size"
  type        = number
}
/*
variable "cluster_address_space" {
  description = "Address Space"
  type        = list(string)
}*/

variable "cluster_backend_port" {
  description = "Backend Port"
  type        = number
}

variable "cluster_public_port" {
  description = "Public Port"
  type        = number
}

variable "rancher_projects" {
  description = "The Projects to create on a base k8s Cluster"
  type        = string
}

variable "cluster_stage1_apps" {
  description = "A list of apps"
  type = map(object({
    namespace = string
    catalog_name = string
    template_name = string
    create_namespace = bool
    system_app = bool
  }))
}

/*
variable "cluster_catalogs" {
  type = map(object({
    helm_charts_repo_url = string
    helm_charts_repo_branch = string
  }))
}*/

variable "helm_chart_repo_url" {
  description = "The git repo url"
  type        = string
}

variable "docker_config_json" {
  description = "The docker config json"
  type        = string
}

variable "cluster_endpoint_csv" {
  description = "The list of cluster endpoints in csv"
  type        = string
}

variable "security_group_rules" {
  description = "The rules to add as an object"
  type        =  map(object({
    name                                        = string
    priority                                    = string
    direction                                   = string
    access                                      = string
    protocol                                    = string
    source_port_range                           = string
    destination_port_range                      = string
    source_address_prefix                       = string
    destination_address_prefix                  = string
  }))
}

variable "rancher_agent_version" {
  description = "Rancher agent version"
  type        = string
}

variable "rancher_internal_ip" {
  type        = string
}

variable "rancher_server_name" {
  type        = string
}