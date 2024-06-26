terraform {
  cloud {
    organization = "manasrc"

    workspaces {
      name = "terraform"
    }
  }

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}
