module "ec2" {
    source = "../terraform-aws-ec2"
    # source = "git::https://github.com/Shahul1507/terraform/terraform-aws-ec2.git"
    # these are variables expected module, not arguments of resource definition
    # You can also create variables or else you can directly use values here
    ami_id = var.ami_something
    instance_type = "t3.micro"
    security_group_ids = ["sg-01fb6cf8516e8a66a"]
}