resource "digitalocean_vpc" "development" {
  name     = "development"
  region   = var.do_region
  ip_range = "10.0.0.0/16"
}
