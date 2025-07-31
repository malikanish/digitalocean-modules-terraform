variable "app_config" {}
variable "mysql_config" {
}
variable "prefix_name" {
  type        = string
  description = "Prefix for resource names"

}
variable "mysql_user_config" {
  description = "MySQL user config"
  type        = any

}
variable "mysql_db_config" {
  description = "MySQL DB config"
  type        = any

}

variable "kafka_config" {
  description = "Kafka cluster config"
  type        = any
}
variable "kafka_user_config" {
  description = "Kafka user config"
  type        = any
}
variable "kafka_db_config" {
  description = "Kafka DB config"
  type        = any
}


variable "mongodb_config" {
  type        = any
  description = "MongoDB cluster configuration"
}

variable "mongodb_user_config" {
  type        = any
  description = "MongoDB user configuration"
}

variable "mongodb_db_config" {
  type        = any
  description = "MongoDB database configuration"
}


variable "postgres_config" {
  type        = any
  description = "PostgreSQL cluster configuration"
}

variable "postgres_user_config" {
  type        = any
  description = "PostgreSQL user configuration"
}

variable "postgres_db_config" {
  type        = any
  description = "PostgreSQL database configuration"
}

variable "vpc_config" {
}