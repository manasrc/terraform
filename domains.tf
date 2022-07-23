#
# Production domain: manasrc.com
# Production certificates: manasrc.com, *.manasrc.com
#

resource "digitalocean_domain" "production" {
  name = "manasrc.com"
}

resource "digitalocean_certificate" "production" {
  name = "manasrc.com"
  type = "lets_encrypt"

  domains = [
    "manasrc.com",
    "*.manasrc.com"
  ]
}

#
# Development domain: manasrc.dev
# Development certificates: manasrc.dev, *.manasrc.dev
#

resource "digitalocean_domain" "development" {
  name = "manasrc.dev"
}

resource "digitalocean_certificate" "development" {
  name = "manasrc.dev"
  type = "lets_encrypt"

  domains = [
    "manasrc.dev",
    "*.manasrc.dev"
  ]
}
