# Infrastructure as Code with Terraform — lesson m05l01 — Scaling Resources With Count
# https://learnsome.tech/courses/terraform-course/watch?lesson=m05l01
# © LearnSome.tech
resource "null_resource" "example" {
  triggers = {
    name = var.name
  }
}

variable "name" {
  type = string
}
