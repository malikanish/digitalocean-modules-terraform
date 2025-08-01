resource "digitalocean_domain" "this" {
  name = var.domain_name
}

resource "digitalocean_record" "web" {
  domain = digitalocean_domain.this.name
  type   = var.web_domain.type
  name   = var.web_domain.name
  value  = var.web_domain.value
 
}

resource "digitalocean_record" "db" {
  domain = digitalocean_domain.this.name
  type   = var.domain_name_value.type
  name   = var.domain_name_value.name
  value  = var.domain_name_value.value
}

resource "digitalocean_record" "api" {
  domain = digitalocean_domain.this.name
  type   = var.api_domain.type
  name   = var.api_domain.name
  value  = var.api_domain.value

}
