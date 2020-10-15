output "name" {
  value = resource.rancher2_cluster.name
}

output "resource_group" {
  value = resource.resource_group.name
}

output "kubernetes_version" {
  value = var.kubernetes_version
}