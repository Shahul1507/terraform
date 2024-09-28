output "public_ip" {
  value       = aws_instance.terraform.public_ip
  sensitive   = false
  description = "this is the public IP of instance created "
}

output "private_ip" {
  value       = aws_instance.terraform.private_ip
  sensitive   = false
  description = "This is the Privte IP of instance created"
}