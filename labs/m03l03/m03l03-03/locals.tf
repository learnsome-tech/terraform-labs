# Infrastructure as Code with Terraform — lesson m03l03 — Functions And Expressions In HCL
# https://learnsome.tech/courses/terraform-course/watch?lesson=m03l03
# © LearnSome.tech
variable "names" {
  type    = list(string)
  default = ["Ada", "Linus", "Grace"]
}

locals {
  normalised = [for name in var.names : lower(trimspace(name))]
  headline  = join(", ", [for name in local.normalised : title(name)])
  first     = try(local.normalised[0], "nobody")
}

output "headline" {
  value = local.headline
}

output "first_name" {
  value = local.first
}
