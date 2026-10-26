terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}

provider "docker" {}

# Pulls the Nginx Docker Image
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

# Creates and runs the Nginx Docker Container
resource "docker_container" "nginx_demo" {
  image = docker_image.nginx.image_id
  name  = "terraform-nginx-container"

  ports {
    internal = 80
    external = 8081
  }
}