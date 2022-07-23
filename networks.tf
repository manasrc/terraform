#
# Development vpc
#

resource "digitalocean_vpc" "development" {
  name     = "development"
  region   = "fra1"
  ip_range = "10.0.0.0/16"
}

#
# Production vpc
#

resource "digitalocean_vpc" "production" {
  name     = "production"
  region   = "fra1"
  ip_range = "10.1.0.0/16"
}
