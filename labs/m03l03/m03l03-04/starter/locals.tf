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
