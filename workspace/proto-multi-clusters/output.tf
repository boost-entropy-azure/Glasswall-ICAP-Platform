
output "icap_resource_groups" {
  value = [
    for cluster in module.icap_clusters :
    cluster.resource_group_name
  ]
}

output "icap_system_ids" {
  value = flatten([
    for cluster in module.icap_clusters :
    cluster.system_ids
  ])
}

output "icap_project_ids" {
  value = flatten([
    for cluster in module.icap_clusters :
    cluster.project_ids
  ])
}

output "icap_cluster_worker_lb_dns_names" {
  value = [
    for cluster in module.icap_clusters :
      cluster.cluster_worker_lb_dns_name
  ]
}

output "internal_icap_cluster_worker_lb_dns_names" {
  value = join(",",[
    for cluster in module.icap_clusters :
      trimsuffix(cluster.int_cluster_worker_lb_dns_name,".")
  ])
}

/*
output "admin_cluster_worker_lb_dns_names" {
  value = module.admin_cluster.cluster_worker_lb_dns_name
}*/

output "icap_cluster_worker_lb_ip_addr" {
  value = [
    for cluster in module.icap_clusters :
    cluster.worker_lb_ip_address
  ]
}

/*
output "r1_resource_group" {
  value = module.icap_clusters.["northeurope"]
}

output "r1_network_name" {
  value = module.icap_clusters.network_name
}

output "r1_network_id" {
  value = module.icap_clusters.network_id
}

output "r1_subnet_name" {
  value = module.icap_clusters.subnet_name
}
/*
output "r1_cluster_worker_lb_dns_name" {
  value = module.icap_clusters.cluster_worker_lb_dns_name
}

output "r1_cluster_worker_lb_ip_addr" {
  value = module.icap_clusters.worker_lb_ip_address
}*/
