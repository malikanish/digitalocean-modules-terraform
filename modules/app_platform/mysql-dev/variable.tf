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
variable "prefix_name" {
  type        = string
  description = "Prefix for resource names"
  
}
variable "vpc_id" {}
variable "project_id" {
  
}
variable "domain" {
  
}