resource "digitalocean_database_cluster" "mysql" {
  name       = var.mysql_config.name
  engine     = var.mysql_config.engine
  version    = var.mysql_config.version
  size       = var.mysql_config.size
  region     = var.mysql_config.region
  node_count = var.mysql_config.node_count
  private_network_uuid = var.vpc_id 
  project_id = var.project_id
tags = [
  "${var.prefix_name}-${var.mysql_config.name}"
]

}

resource "digitalocean_database_user" "mysql_user" {
  cluster_id = digitalocean_database_cluster.mysql.id
  name       = "${var.prefix_name}-${var.mysql_user_config.user}"

}

resource "digitalocean_database_db" "mysql_db" {
  cluster_id = digitalocean_database_cluster.mysql.id
  name       = "${var.prefix_name}-${var.mysql_db_config.db_name}"
}

