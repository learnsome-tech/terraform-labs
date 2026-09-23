# Infrastructure as Code with Terraform — lesson m05l04 — Safe Changes With Lifecycle Rules
# https://learnsome.tech/courses/terraform-course/watch?lesson=m05l04
# © LearnSome.tech
resource "null_resource" "example" {
  triggers = {
    name = var.name
  }
}

variable "name" {
  type = string
}
