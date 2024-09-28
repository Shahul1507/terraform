variable "instance_names" {
  type        = list(string)
  default     = ["mysql","backend","frontend"]
}

variable "common_tags" {
  type = map
  default = {
    Project = "expense"
    Environment = "dev"
    Terraform = "true"
  }

}

variable "zone_id" {
  default     = "Z06321023RSPR3MPYN5JW" # r53 zone id from hosted zones
}

variable "domain_name" {
  default     = "shahul.online" 
}