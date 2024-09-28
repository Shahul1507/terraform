# 1. command line
# 2. terraform.tfvars
# 3. environment variables, TF_VAR_your_variable_name
# 4. default
# 5. prompt

#ami
variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "this is the AMI ID of devops-practice which is RHEL-9 "
}

# instance_type
variable "instance_type" {
  type        = string
  # default     = "t3.micro"
}
#tags
variable "tags" {
  type        = map
  default     = {
     Name = "backend"
     project = "expense"
     component = "backend"
     environment = "DEV"
     terraform = "true"
  } 
  
}
# security group : name 
variable "sg_name" {
  default     = "allow_sshh"

}
# description
variable "sg_description" {
  default     = "Allow port number 22 for ssh access"
  
}
# ingress
variable "from_port" {
  type        = number
  default     = "22"
 
}
variable "to_port" {
  type        = number
  default     = "22"
  
}
variable "protocal" {
  type        = string
  default     =  "tcp"
  
}
variable "cidr_blocks" {
  type        = list(string)
  default     = ["0.0.0.0/0"] #list,one or many
  
}

