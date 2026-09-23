# Infrastructure as Code with Terraform — lesson m01l04 — Providers And The required_providers Block
# https://learnsome.tech/courses/terraform-course/watch?lesson=m01l04
# © LearnSome.tech
terraform {
  required_version = ">= 1.6.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 99.0"
    }
  }
}
