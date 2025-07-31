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

variable "prefix_name" {
  type        = string
  description = "Prefix for resource names"
  
}
variable "vpc_id" {}