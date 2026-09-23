# Infrastructure as Code with Terraform — lesson m01l04 — Providers And The required_providers Block
# https://learnsome.tech/courses/terraform-course/watch?lesson=m01l04
# © LearnSome.tech
terraform {
  required_providers {
    aws = { source = "hashicorp/aws", version = "~> 6.0" }
  }
}

provider "aws" {
  region = "eu-west-2"
}
