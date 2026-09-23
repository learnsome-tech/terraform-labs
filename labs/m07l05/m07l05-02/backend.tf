# Infrastructure as Code with Terraform — lesson m07l05 — Security: Secrets In State And Ephemeral Values
# https://learnsome.tech/courses/terraform-course/watch?lesson=m07l05
# © LearnSome.tech
terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}

variable "environment" {
  type = string
}
