resource "digitalocean_database_cluster" "postgres" {
  name       = var.postgres_config.name
  engine     = var.postgres_config.engine  
  version    = var.postgres_config.version 
  size       = var.postgres_config.size     
  region     = var.postgres_config.region   
  node_count = var.postgres_config.node_count
}

resource "digitalocean_database_user" "postgres_user" {
  cluster_id = digitalocean_database_cluster.postgres.id
  name       = var.postgres_user_config.user
}

resource "digitalocean_database_db" "postgres_db" {
  cluster_id = digitalocean_database_cluster.postgres.id
  name       = var.postgres_db_config.db_name
}
