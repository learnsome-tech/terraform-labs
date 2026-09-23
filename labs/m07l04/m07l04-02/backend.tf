# Infrastructure as Code with Terraform — lesson m07l04 — Workspaces For Multiple Environments
# https://learnsome.tech/courses/terraform-course/watch?lesson=m07l04
# © LearnSome.tech
terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}

variable "environment" {
  type = string
}
