resource "digitalocean_database_cluster" "mongodb" {
  name       = var.mongodb_config.name
  engine     = var.mongodb_config.engine
  version    = var.mongodb_config.version
  size       = var.mongodb_config.size
  region     = var.mongodb_config.region
  node_count = var.mongodb_config.node_count
}

resource "digitalocean_database_user" "mongodb_user" {
  cluster_id = digitalocean_database_cluster.mongodb.id
  name       = var.mongodb_user_config.user
}

resource "digitalocean_database_db" "mongodb_db" {
  cluster_id = digitalocean_database_cluster.mongodb.id
  name       = var.mongodb_db_config.db_name
}