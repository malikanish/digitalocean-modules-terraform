resource "digitalocean_database_cluster" "kafka" {
  name       = var.kafka_config.name
  engine     = var.kafka_config.engine
  version    = var.kafka_config.version
  size       = var.kafka_config.size
  region     = var.kafka_config.region
  node_count = var.kafka_config.node_count
}

resource "digitalocean_database_user" "kafka_user" {
  cluster_id = digitalocean_database_cluster.kafka.id
  name       = var.kafka_user_config.user
}

resource "digitalocean_database_db" "kafka_db" {
  cluster_id = digitalocean_database_cluster.kafka.id
  name       = var.kafka_db_config.db_name
}
