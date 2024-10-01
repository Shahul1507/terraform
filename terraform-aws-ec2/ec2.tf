resource "aws_instance" "terraform" {
    # count = var
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = var.security_group_ids
}