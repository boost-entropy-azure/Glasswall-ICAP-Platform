
locals {
  project          = "${var.project}-${var.suffix}"
  zone_prefix      = var.environment
  short_region     = substr(var.azure_region, 0, 3)
  service_name     = "${var.organisation}-${local.project}-${var.environment}-${local.short_region}"
  git_service_name = "${var.organisation}-git-server-${var.suffix}-${var.environment}-${local.short_region}"
}

resource "tls_private_key" "ssh" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

module "resource_group" {
  source = "../azure/resource-group"
  name   = local.service_name
  region = var.azure_region
}

module "network" {
  source         = "../azure/network"
  resource_group = module.resource_group.name
  region         = var.azure_region
  service_name   = local.service_name
  address_space  = var.network_addresses
  organisation   = var.organisation
  environment    = var.environment
}

module "subnet" {
  source               = "../azure/subnet"
  service_name         = local.service_name
  resource_group       = module.resource_group.name
  virtual_network_name = module.network.name
  address_prefixes     = var.subnet_address_prefixes
}

module "nat" {
  source         = "../azure/nat-gateway"
  service_name   = local.service_name
  resource_group = module.resource_group.name
  azure_region   = var.azure_region
}

resource "azurerm_subnet_nat_gateway_association" "main" {
  subnet_id      = module.subnet.id
  nat_gateway_id = module.nat.nat_gateway_id
}

resource "azurerm_dns_zone" "main" {
  name                = var.dns_zone
  resource_group_name = module.resource_group.name
}

resource "azurerm_dns_ns_record" "child" {
  name                = local.zone_prefix
  zone_name           = azurerm_dns_zone.main.name
  resource_group_name = module.resource_group.name
  ttl                 = 300
  records             = azurerm_dns_zone.main.name_servers
}

resource "time_sleep" "wait_60_seconds" {
  depends_on      = [module.rancher_server]
  create_duration = "60s"
}
