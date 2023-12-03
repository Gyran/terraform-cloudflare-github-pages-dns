terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = ">= 4.20.0"
    }
  }
}

module "apex" {
  source  = "./modules/terraform-cloudflare-github-pages-apex-dns"
  zone_id = var.zone_id
}

module "domain" {
  source   = "./modules/terraform-cloudflare-github-pages-domain-dns"
  zone_id  = var.zone_id
  username = var.username
  domain   = var.domain
}
