# Infrastructure as Code with Terraform — lesson m04l04 — The Terraform Registry And Public Modules
# https://learnsome.tech/courses/terraform-course/watch?lesson=m04l04
# © LearnSome.tech
module "network" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.0.0"

  name = var.name
  cidr = var.cidr
  azs  = var.availability_zones
}
