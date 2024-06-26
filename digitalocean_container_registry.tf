resource "digitalocean_container_registry" "manasrc" {
  name   = "manasrc"
  region = var.do_region

  subscription_tier_slug = "starter"
}
