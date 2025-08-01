
module "app_platform" {
  source = "../modules/app_platform/dev"
  domain_name_value = module.domain_name_dev.domain_name


  app = var.app_config
}

module "mysql_dev" {
  source = "../modules/app_platform/mysql-dev"

  prefix_name       = var.prefix_name
  mysql_config      = var.mysql_config
  mysql_user_config = var.mysql_user_config
  mysql_db_config   = var.mysql_db_config
  vpc_id            = module.vpc_dev.vpc_id
  project_id = var.project_id-dev
  domain = module.domain_name_dev.domain_name 
}

module "managed_kafka" {
  source            = "../modules/app_platform/kafka-dev"
  prefix_name       = var.prefix_name
  kafka_config      = var.kafka_config
  kafka_user_config = var.kafka_user_config
  kafka_db_config   = var.kafka_db_config
  vpc_id            = module.vpc_dev.vpc_id
  project_id        = module.project_dev.project_id
}

module "mongodb_dev" {
  source = "../modules/app_platform/mongodb-dev"

  prefix_name = var.prefix_name

  mongodb_config      = var.mongodb_config
  mongodb_user_config = var.mongodb_user_config
  mongodb_db_config   = var.mongodb_db_config
  vpc_id              = module.vpc_dev.vpc_id
  project_id          = module.project_dev.project_id
}
module "postgres_dev" {
  source      = "../modules/app_platform/postgress-dev"
  prefix_name = var.prefix_name

  postgres_config      = var.postgres_config
  postgres_user_config = var.postgres_user_config
  postgres_db_config   = var.postgres_db_config
  vpc_id               = module.vpc_dev.vpc_id
  project_id           = module.project_dev.project_id

}
module "vpc_dev" {
  source     = "../modules/app_platform/vpc-dev"
  vpc_config = var.vpc_config
}
module "project_dev" {
  source         = "../modules/app_platform/project-dev"
  project_config = var.project_config
}

module "domain_name_dev" {
  source = "../modules/app_platform/domain-dev"

  domain_name = var.domain_name
  domain_name_value = var.domain_name_value
  web_domain = var.web_domain
  api_domain = var.api_domain
 
  
}