# Infrastructure as Code with Terraform — lesson m07l01 — The Problem With Local State
# https://learnsome.tech/courses/terraform-course/watch?lesson=m07l01
# © LearnSome.tech
terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}

variable "environment" {
  type = string
}
