resource "docker_image" "local_res" {
  name = "nginxdemos/hello"
  force_remove = true
}

resource "docker_container" "local_container" {
  name = "local_container"
  image = docker_image.local_res.name
  restart = "always"

  ports {
    internal = "80"
    external = "8081"
  }

  depends_on = [
    docker_image.local_res
  ]
  
}