module "network" {
  source = "./modules/network"
  name = var.network_name
  subnets = var.subnet_names
}

variable "network_name" {
  type = string
}

variable "subnet_names" {
  type = set(string)
}

output "network_id" {
  value = module.network.network_id
}

output "subnet_ids" {
  value = module.network.subnet_ids
}
