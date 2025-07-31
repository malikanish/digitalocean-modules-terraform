resource "digitalocean_vpc" "this" {
  name     = var.vpc_config.name
  region   = var.vpc_config.region
  ip_range = var.vpc_config.ip_range
}
