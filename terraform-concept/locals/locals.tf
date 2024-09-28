 locals {
   domain_name = "shahul.online"
   zone_id = "Z06321023RSPR3MPYN5JW"
   instance_type = var.environment == "prod" ? "t3.medium" : "t3.micro"
 }
 