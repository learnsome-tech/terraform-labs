# Infrastructure as Code with Terraform — lesson m05l03 — Explicit Dependencies With Depends On
# https://learnsome.tech/courses/terraform-course/watch?lesson=m05l03
# © LearnSome.tech
resource "null_resource" "example" {
  triggers = {
    name = var.name
  }
}

variable "name" {
  type = string
}
