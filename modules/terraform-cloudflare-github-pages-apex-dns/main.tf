terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 2.25"
    }
  }
}

locals {
  ips = toset(["185.199.108.153",
    "185.199.109.153",
    "185.199.110.153",
    "185.199.111.153",
  ])
}

# IP adresses:
# https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site
resource "cloudflare_record" "a" {
  for_each = local.ips
  value    = each.value

  zone_id = var.zone_id
  name    = "@"
  type    = "A"
  proxied = false
}
