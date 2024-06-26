resource "digitalocean_kubernetes_cluster" "development" {
  name = "development"

  region   = var.do_region
  vpc_uuid = digitalocean_vpc.development.id

  auto_upgrade         = true
  registry_integration = true

  version = "1.30.1-do.0"

  node_pool {
    name       = "default"
    size       = "s-1vcpu-2gb"
    node_count = 3
  }

  maintenance_policy {
    start_time = "00:00"
    day        = "sunday"
  }
}
