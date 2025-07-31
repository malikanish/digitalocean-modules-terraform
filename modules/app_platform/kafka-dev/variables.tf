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

variable "prefix_name" {
  type        = string
  description = "Prefix for resource names"
  
}
variable "vpc_id" {}