# use output.instances_info
# output.instances_info == aws_instance.expense

output "instance_info" {
  value = aws_instance.terraform

}
