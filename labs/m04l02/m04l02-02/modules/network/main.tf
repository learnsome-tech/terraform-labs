# Infrastructure as Code with Terraform — lesson m04l02 — Writing A Custom Network Module
# https://learnsome.tech/courses/terraform-course/watch?lesson=m04l02
# © LearnSome.tech
variable "name" {
  type = string
}

variable "subnets" {
  type = set(string)
}

resource "null_resource" "network" {
  triggers = { name = var.name }
}

resource "null_resource" "subnet" {
  for_each = var.subnets
  triggers = { network = null_resource.network.id, name = each.value }
}

output "network_id" { value = null_resource.network.id }
output "subnet_ids" { value = { for k, v in null_resource.subnet : k => v.id } }
