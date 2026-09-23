# Infrastructure as Code with Terraform — lesson m04l05 — Versioning And Pinning Modules
# https://learnsome.tech/courses/terraform-course/watch?lesson=m04l05
# © LearnSome.tech
module "network" {
  source  = "./modules/network"
  version = "1.2.0"
  name    = var.network_name
  subnets = var.subnet_names
}
