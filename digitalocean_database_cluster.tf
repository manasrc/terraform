resource "digitalocean_database_cluster" "development" {
  name = "development"

  engine  = "pg"
  version = "16"

  private_network_uuid = digitalocean_vpc.development.id
  project_id           = digitalocean_project.development.id
  region               = var.do_region

  size             = "db-intel-1vcpu-1gb"
  node_count       = 1
  storage_size_mib = 20480

  maintenance_window {
    day  = "sunday"
    hour = "00:00"
  }
}
