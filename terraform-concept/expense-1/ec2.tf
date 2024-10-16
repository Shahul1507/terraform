resource "aws_instance" "terraform" {
  count                  = length(var.instance_names)
  ami                    = data.aws_ami.ami_info.id
  instance_type          = var.instance_names[count.index] == "mysql" ? "t3.small" : "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
  tags = {
    Name = var.instance_names[count.index]
  }
}

resource "aws_instance" "terraform-ansible" {

  ami                    = data.aws_ami.ami_info.id
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
  user_data = file("expense.sh")
  tags = {
    Name = "ansible"
  }
}

resource "aws_security_group" "allow_ssh_terraform" {
  name        = "allow_sshh" # allow_ssh is already present in my aws account
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
