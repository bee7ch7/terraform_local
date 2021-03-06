terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "2.16.0"
    }
  }
}

provider "docker" {
  # Configuration options
  host    = "npipe:////.//pipe//docker_engine"
}