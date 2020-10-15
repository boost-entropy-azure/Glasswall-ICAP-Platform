
provider "rancher2" {
  alias = "admin"
  api_url = var.rancher_admin_url
  token_key = var.rancher_admin_token
  insecure = true
}

# Azure Node Pool
resource "rancher2_node_pool" "nodepool_az" {
  cluster_id = var.cluster_id
  name = var.service_name
  hostname_prefix = "rke-${random_id.nodes.hex}-"
  node_template_id = rancher2_node_template.node_pool_template
  quantity = var.node_pool_nodes_qty
  control_plane = true
  etcd = true
  worker = true
}

resource "random_id" "nodes" {
  keepers = {
    # Generate a new ID only when a new resource group is defined
    resource_group = var.resource_group
  }

  byte_length = 8
}