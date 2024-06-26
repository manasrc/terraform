resource "digitalocean_vpc" "development" {
  name     = "development"
  region   = "fra1"
  ip_range = "10.0.0.0/16"
}
