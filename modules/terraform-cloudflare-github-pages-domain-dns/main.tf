terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = ">= 4.20.0"
    }
  }
}

resource "cloudflare_record" "domain" {
  zone_id = var.zone_id
  name    = var.domain
  value   = "${var.username}.github.io"
  type    = "CNAME"
  proxied = false
}
