
module "remote_state" {
  source           = "../../../workspace/terraform-remote-state"
  organisation     = var.organisation
  environment      = var.environment
  project          = "remotestatestore"
  suffix           = var.suffix
  azure_region     = var.azure_region
  storage_tier     = "Standard"
  replication_type = "LRS"
  tenant_id        = var.tenant_id
  subscription_id  = var.subscription_id
}
