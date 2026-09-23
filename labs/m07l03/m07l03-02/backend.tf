# Infrastructure as Code with Terraform — lesson m07l03 — State Locking With Use Lockfile
# https://learnsome.tech/courses/terraform-course/watch?lesson=m07l03
# © LearnSome.tech
terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}

variable "environment" {
  type = string
}
