variable "app_config" {
}

variable "mysql_config" {
    type        = any
  description = "MySQL DB cluster config"
}

variable "mysql_user_config" {
    type        = any
  description = "MySQL user config"
  
}
variable "mysql_db_config" {
    type        = any
  description = "MySQL DB config"
  
}
variable "kafka_config" {
  description = "Kafka cluster config"
  type = any
}
variable "kafka_user_config" {
  description = "Kafka user config"
  type = any
}
variable "kafka_db_config" {
  description = "Kafka DB config"
  type = any
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
    type = any
  description = "PostgreSQL cluster configuration"
}

variable "postgres_user_config" {
 type = any
  description = "PostgreSQL user configuration"
}

variable "postgres_db_config" {
  type = any
  description = "PostgreSQL database configuration"
}
