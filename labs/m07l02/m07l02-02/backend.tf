# Infrastructure as Code with Terraform — lesson m07l02 — Configuring A Remote Backend
# https://learnsome.tech/courses/terraform-course/watch?lesson=m07l02
# © LearnSome.tech
terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}

variable "environment" {
  type = string
}
