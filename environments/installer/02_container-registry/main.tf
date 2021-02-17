terraform {
  backend "azurerm" {
    resource_group_name  = ""
    storage_account_name = ""
    container_name       = ""
    key                  = ""
  }
}

module "containers" {
  source           = "../../../workspace/container-registry"
  organisation     = var.organisation
  environment      = var.environment
  project          = "containerregistry"
  suffix           = var.suffix
  azure_region     = var.azure_region
  storage_tier     = "Standard"
  replication_type = "LRS"
  tenant_id        = var.tenant_id
  subscription_id  = var.subscription_id
}
