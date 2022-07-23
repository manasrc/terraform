#
# Development database cluster
#

resource "digitalocean_database_cluster" "development" {
  name = "development"

  engine  = "mongodb"
  version = "4"

  size       = "db-s-1vcpu-1gb"
  node_count = 1

  region               = "fra1"
  private_network_uuid = digitalocean_vpc.development.id
}
