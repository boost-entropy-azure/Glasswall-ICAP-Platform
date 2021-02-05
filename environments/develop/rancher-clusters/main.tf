
terraform {
  backend "azurerm" {
    resource_group_name  = "tf-state-resource-group"
    storage_account_name = "gwtfstatestorageaccount"
    container_name       = "tfstatecontainer"
    key                  = "gw-rancher-clusters-develop-terraform.tfstate"
  }
}

data "terraform_remote_state" "rancher_server" {
  backend = "azurerm"
  config = {
    resource_group_name  = "tf-state-resource-group"
    storage_account_name = "gwtfstatestorageaccount"
    container_name       = "tfstatecontainer"
    key                  = "gw-rancher-develop-terraform.tfstate"
  }
}

module "rancher_clusters" {
    source                            = "../../../workspace/proto-multi-clusters"
    organisation                      = "gw"
    environment                       = "dev"
    branch                            = "develop"
    icap_cluster_suffix_r1            = "x"
    icap_cluster_suffix_r2            = "y"
    icap_cluster_suffix_r3            = "z"
    subscription_id                   = "b8177f86-515f-4bff-bd08-1b9535dbc31b"
    tenant_id                         = "7049e6a3-141d-463a-836b-1ba40d3ff653"
    #cluster quantity is 1 per region
    icap_cluster_quantity             = 1
    icap_master_scaleset_sku_capacity = 1
    icap_worker_scaleset_sku_capacity = 1
    dns_zone                          = "dev.icap-proxy.curlywurly.me"
    azure_keyvault_name               = "gw-icap-keyvault"
    azure_keyvault_resource_group     = "keyvault"
    azure_keyvault_client_id          = "icap-service-principle-id"
    azure_keyvault_client_secret      = "icap-service-principle-value"
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
