locals {
  kv_name = "${var.organisation}keyvault${var.environment}${var.suffix}"
}

module "rancher_server" {
  source                   = "../../../workspace/rancher-bootstrap"
  organisation             = var.organisation
  environment              = var.environment
  project                  = "rancher-server"
  suffix                   = var.rancher_suffix
  git_server_version       = "2.31"
  key_vault_resource_group = "${local.kv_name}-rg"
  key_vault_name           = local.kv_name
  container_registry_url   = var.container_registry_url
  azure_region             = var.azure_region
  dns_zone_name            = var.dns_zone_name
  tenant_id                = var.tenant_id
  subscription_id          = var.subscription_id
}
