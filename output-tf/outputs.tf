# produces an output value named "container_id"
output "container_id" {
  description = "ID of the Docker container"
  value       = docker_container.nginx.id
}
# produces an output value named "image_id"
output "image_id" {
  description = "ID of the Docker image"
  value       = docker_image.nginx.id
}

# produces an output value named "container_hostname"
output "container_hostname" {
  description = "hostname of container"
  value       = docker_container.nginx.hostname
}

output "ip_address" {
  description = "IP Address of the Docker image"
  value       = docker_container.nginx.ip_address
}
