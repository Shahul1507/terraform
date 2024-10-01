resource "aws_instance" "terraform" {
  # count = terraform.workspace == "prod" ? 2 : 1
  ami = "ami-09c813fb71547fc4f"
  instance_type = lookup(var.instance_type, terraform.workspace)
  vpc_security_group_ids = ["sg-01fb6cf8516e8a66a"]
  tags = {
    Name = "terraform-${terraform.workspace}"
  }
}


