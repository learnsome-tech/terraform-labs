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
