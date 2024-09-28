resource "aws_instance" "terraform" {

  ami = "ami-09c813fb71547fc4f"
  instance_type = var.environment == "prod" ? "t3.small" : "t3.micro" # condition if environment is prod = t3.small or else its t3.micro
  vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
  tags = {
    Name = "terraform"
  }
}

resource "aws_security_group" "allow_ssh_terraform" {
    name = "allow_sshh" # allow_ssh is already present in my aws account
    description = "allow port number 22 for SSH access"

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1" # -1 means all
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"] # allow from everyone
        ipv6_cidr_blocks = ["::/0"]
    }

    
    tags = {
        Name = "allow_sshh"
    }
}