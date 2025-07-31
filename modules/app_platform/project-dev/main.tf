resource "digitalocean_project" "this" {
  name        = var.project_config.name
  description = var.project_config.description
  purpose     = var.project_config.purpose
  environment = var.project_config.environment
}
