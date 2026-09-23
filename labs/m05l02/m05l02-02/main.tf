# Infrastructure as Code with Terraform — lesson m05l02 — Iterating Over Maps With For Each
# https://learnsome.tech/courses/terraform-course/watch?lesson=m05l02
# © LearnSome.tech
resource "null_resource" "example" {
  triggers = {
    name = var.name
  }
}

variable "name" {
  type = string
}
