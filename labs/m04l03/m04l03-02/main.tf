# Infrastructure as Code with Terraform — lesson m04l03 — Calling Your Module And Passing Variables
# https://learnsome.tech/courses/terraform-course/watch?lesson=m04l03
# © LearnSome.tech
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
