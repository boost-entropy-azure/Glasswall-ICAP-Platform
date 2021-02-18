locals {
  kv_name                      = "${var.organisation}keyvault${var.environment}${var.suffix}"
  tfstate_resource_group       = "${var.organisation}-remotestatestore-${var.environment}-${var.suffix}"
  tfstate_storage_account_name = "${var.organisation}remotestatestore${var.environment}${var.suffix}"
  tfstate_key_03               = "${var.organisation}-rancherserver-${var.environment}-${var.suffix}.tfstate"
  dns_zone_name = "${var.environment}.${var.root_dns_zone_name}"
}

data "terraform_remote_state" "rancher_server" {
  backend = "azurerm"
  config = {
    resource_group_name  = local.tfstate_resource_group
    storage_account_name = local.tfstate_storage_account_name
    container_name       = "${local.tfstate_resource_group}-state-storage"
    key                  = local.tfstate_key_03
  }
}

module "rancher_clusters" {
  source                            = "../../../workspace/proto-multi-clusters"
  organisation                      = var.organisation
  environment                       = var.environment
  branch                            = "release"
  icap_cluster_suffix_r1            = var.cluster_1_suffix
  icap_cluster_suffix_r2            = var.cluster_2_suffix
  icap_cluster_suffix_r3            = var.cluster_3_suffix
  icap_cluster_quantity             = var.icap_cluster_quantity
  icap_master_scaleset_sku_capacity = var.icap_master_quantity
  icap_worker_scaleset_sku_capacity = var.icap_worker_quantity
  dns_zone                          = local.dns_zone_name
  tenant_id                         = var.tenant_id
  subscription_id                   = var.subscription_id
  azure_keyvault_resource_group     = "${local.kv_name}-rg"
  azure_keyvault_name               = local.kv_name
  rancher_suffix                    = data.terraform_remote_state.rancher_server.outputs.rancher_suffix
  rancher_api_url                   = data.terraform_remote_state.rancher_server.outputs.rancher_api_url
  rancher_internal_api_url          = data.terraform_remote_state.rancher_server.outputs.rancher_internal_api_url
  rancher_network                   = data.terraform_remote_state.rancher_server.outputs.network
  rancher_server_name               = data.terraform_remote_state.rancher_server.outputs.rancher_server_url
  rancher_admin_token               = data.terraform_remote_state.rancher_server.outputs.rancher_admin_token
  rancher_network_name              = data.terraform_remote_state.rancher_server.outputs.network
  rancher_network_id                = data.terraform_remote_state.rancher_server.outputs.network_id
  rancher_resource_group            = data.terraform_remote_state.rancher_server.outputs.resource_group
  rancher_subnet_id                 = data.terraform_remote_state.rancher_server.outputs.subnet_id
  rancher_subnet_prefix             = data.terraform_remote_state.rancher_server.outputs.subnet_prefix
  rancher_subnet_name               = data.terraform_remote_state.rancher_server.outputs.subnet_name
  rancher_region                    = data.terraform_remote_state.rancher_server.outputs.region
  rancher_agent_version             = data.terraform_remote_state.rancher_server.outputs.rancher_agent_version
  git_server_url                    = data.terraform_remote_state.rancher_server.outputs.git_server_url
  public_key_openssh                = data.terraform_remote_state.rancher_server.outputs.public_key_openssh
  rancher_internal_ip               = data.terraform_remote_state.rancher_server.outputs.linux_vm_private_ips
}
