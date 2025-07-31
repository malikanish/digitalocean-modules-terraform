resource "digitalocean_app" "app" {
  spec {
    name   = var.app.app_name
    region = var.app.region

    service {
      name = var.app.name

      github {
        repo           = var.app.repo_url
        branch         = var.app.branch
        deploy_on_push = var.app.deploy_on_push

      }

      build_command      = var.app.build_command
      run_command        = var.app.run_command
      source_dir         = var.app.source_dir
      http_port          = var.app.http_port
      instance_count     = var.app.instance_count
      instance_size_slug = var.app.instance_size_slug

      env {
        key   = var.app.env_var.key
        value = var.app.env_var.value
        scope = var.app.env_var.scope
      }
    }
  }
}
