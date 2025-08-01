app_config = {
  do_token           = "your_do_token"
  app_name           = "my-app-dev"
  region             = "nyc1"
  repo_url           = "anish001/my-repo"
  branch             = "dev"
  run_command        = "npm start"
  build_command      = "npm install && npm run build"
  deploy_on_push     = true
  source_dir         = "/"
  http_port          = 3000
  instance_count     = 1
  instance_size_slug = "basic-xs"
  name               = "frontend-dev"

  env_var = {
    key   = "NODE_ENV"
    value = "development"
    scope = "RUN_AND_BUILD_TIME"
  }
}



mysql_config = {
  name       = "my-mysql-dev"
  engine     = "mysql"
  version    = "8"
  size       = "db-s-1vcpu-1gb"
  region     = "nyc1"
  node_count = 1

}
mysql_user_config = {
  user = "mysql_admin"
}
mysql_db_config = {
  db_name = "my_mysql_db"
}

prefix_name = "Anish"

kafka_config = {
  name       = "kafka-dev"
  engine     = "kafka"
  version    = "3.6"
  size       = "db-s-1vcpu-1gb"
  region     = "nyc1"
  node_count = 1
}

kafka_user_config = {
  user = "kafka_admin"
}

kafka_db_config = {
  db_name = "kafka_db"
}

mongodb_config = {
  name       = "my-mongo-prod"
  engine     = "mongodb"
  version    = "7"
  size       = "db-s-1vcpu-1gb"
  region     = "nyc1"
  node_count = 1
}

mongodb_user_config = {
  user = "mongo_admin"
}

mongodb_db_config = {
  db_name = "my_mongo_db"
}


postgres_config = {
  name       = "my-postgres-cluster"
  engine     = "pg"
  version    = "15"
  size       = "db-s-1vcpu-1gb"
  region     = "nyc1"
  node_count = 1
}

postgres_user_config = {
  user = "pg_admin"
}

postgres_db_config = {
  db_name = "pg_database"
}

vpc_config = {
  name     = "anish-vpc"
  region   = "nyc1"
  ip_range = "10.10.0.0/16"
}

project_config = {
  name        = "anish-project"
  description = "DigitalOcean Terraform simple project"
  purpose     = "Web Hosting"
  environment = "Development"
}

project_id-dev = "Ab123467"
domain_name= "anishtech.com"

domain_name_value = {
  name = "anishtech.com"
  type = "A"
  value = "123.456.789.012" 
}


web_domain = {
  name = "web.anishtech.com"
  type = "A"
  value = "123.456.789.012"  
}

api_domain = {
  name = "api.anishtech.com"
  type = "CNAME"
  value = "api.anishtech.com"
}

