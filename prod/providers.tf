terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.61.0"
    }
  }
}
provider "digitalocean" {
  token = var.app_config.do_token
}