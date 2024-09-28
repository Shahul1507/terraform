resource "aws_route53_record" "expense" {
  for_each =aws_instance.expense
  zone_id         = var.zone_id
  name            = each.key == "frontend-prod" ? var.domain_name : "${each.key}.${var.domain_name}"
  type            = "A"
  ttl             = 1
  records         = startswith(each.key, "frontend") ? [each.value.public_ip] : [each.value.private_ip] #startswith is function
  allow_overwrite = true
}


# startswith Function
# startswith takes two values: a string to check and a prefix string. The function returns true if the string begins with that exact prefix.

# startswith(string, prefix)

# Examples
# > startswith("hello world", "hello")
# true
 
# > startswith("hello world", "world")
# false