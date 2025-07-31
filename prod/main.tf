module "app_platform" {
  source = "../modules/app_platform/prod"
  providers = {
    digitalocean = digitalocean
  }

  app = var.app_config
}

module "mysql_prod" {
  source = "../modules/app_platform/mysql-prod"

  mysql_config = var.mysql_config
  mysql_user_config = var.mysql_user_config
  mysql_db_config = var.mysql_db_config
  
}

module "managed_kafka" {
  source = "../modules/app_platform/kafka-prod"

  kafka_config       = var.kafka_config
  kafka_user_config  = var.kafka_user_config
  kafka_db_config    = var.kafka_db_config
}



module "mongodb_prod" {
  source = "../modules/app_platform/mongodb-prod"

  mongodb_config = var.mongodb_config
  mongodb_user_config = var.mongodb_user_config
  mongodb_db_config = var.mongodb_db_config
}
module "postgres_prod" {
  source = "../modules/app_platform/postgress-prod"

  postgres_config = var.postgres_config
  postgres_user_config = var.postgres_user_config
  postgres_db_config = var.postgres_db_config
  
}