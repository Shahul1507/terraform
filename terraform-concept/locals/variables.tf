variable "instance_names" {
  type    = list(string)
  default = ["mysql", "backend", "frontend"]

}
# variable "zone_id" {
#   default = "Z06321023RSPR3MPYN5JW" # r53 zone id from hosted zones
# }

# variable "domain_name" {
#   default = "shahul.online"
# }

variable "environment" {
  type        = string
  default     = "prod"
  description = "instance type in prod "
}
