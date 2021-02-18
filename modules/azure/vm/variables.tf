# Common variables

variable "organisation" {
  description = "Metadata Organisation"
  type        = string
}

variable "environment" {
  description = "Metadata Environment"
  type        = string
}

variable "service_name" {
  description = "This is a consolidated name based on org, environment, region"
  type        = string
}

variable "service_type" {
  description = "This is consolidated based on the project, type and suffix"
  type        = string
}

variable "resource_group" {
  description = "Azure Resource Group"
  type        = string
}

variable "subnet_id" {
  description = "ID from Subnet module"
  type        = string
}

variable "public_ip_id" {
  description = "ID from Public IP module"
  type        = string
}

variable "region" {
  description = "Azure Region"
  type        = string
  default     = "euwest"
}

variable "size" {
  description = "AZ Pipeline Runner VM image name"
  type        = string
  default     = "Standard_DS1_v2"
}

variable "disk_size" {
  description = "AZ Pipeline Runner VM image name"
  type        = string
  default     = 120
}

variable "os_publisher" {
  description = "Linux OS Publisher"
  type        = string
}

variable "os_offer" {
  description = "Linux OS Offer"
  type        = string
}

variable "os_sku" {
  description = "Linux OS SKU"
  type        = string
}

variable "os_version" {
  description = "Linux OS Version"
  type        = string
  default     = "latest"
}

variable "admin_username" {
  description = "Virtual Machine Admin Username"
  type        = string
  default     = "azure-user"
}

variable "custom_data_file_path" {
  description = "Custom data filepath"
  type        = string
}


variable "public_key_openssh" {
  description = "SSH Public Key"
  type        = string
}

variable "security_group_rules" {
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
  default = {
    ssh = {
      name                       = "ssh"
      priority                   = "1001"
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "tcp"
      source_port_range          = "*"
      destination_port_range     = "22"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    },
    https = {
      name                       = "https"
      priority                   = "1002"
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "tcp"
      source_port_range          = "*"
      destination_port_range     = "443"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    },
    http = {
      name                       = "http"
      priority                   = "1003"
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "tcp"
      source_port_range          = "*"
      destination_port_range     = "80"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
  }
}
