/* outputs.tf
   outputs to display */
   
output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.app_server.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}

output "private_dns" {
description = "DNS"
value       = aws_instance.app_server.private_dns
}
