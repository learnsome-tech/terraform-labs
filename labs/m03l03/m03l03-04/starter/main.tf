terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}
variable "names" { default = ["Ada", "Linus", "Grace"] }
locals {
  normalised = [for name in var.names : lower(trimspace(name))]
  headline = join(", ", [for name in local.normalised : title(name)])
}
resource "local_file" "summary" {
  filename = "summary.txt"
  content = local.headline
}
