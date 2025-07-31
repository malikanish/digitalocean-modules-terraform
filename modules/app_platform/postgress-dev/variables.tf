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

variable "prefix_name" {
  type        = string
  description = "Prefix for resource names"
  
}
variable "vpc_id" {}