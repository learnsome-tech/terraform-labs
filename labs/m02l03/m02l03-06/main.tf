# Infrastructure as Code with Terraform — lesson m02l03 — Predicting Changes, Then Applying Them
# https://learnsome.tech/courses/terraform-course/watch?lesson=m02l03
# © LearnSome.tech
terraform {
  required_version = ">= 1.6.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

resource "local_file" "greeting" {
  filename = "hello.txt"
  content  = "Hello from Terraform, again\n"
}
