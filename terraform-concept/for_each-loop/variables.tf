variable "instances" {
  type        = map
  default     = {
  # key =Value
   mysql = "t3.small"
   backend = "t3.micro"
   frontend = "t3.micro"
  }
  
}

variable "domain_name" {
  default = "shahul.online"
}
variable "zone_id" {
  default = "Z06321023RSPR3MPYN5JW" # r53 zone id from hosted zones
}