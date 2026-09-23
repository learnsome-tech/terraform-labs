# Infrastructure as Code with Terraform — lesson m05l05 — Provisioners: Why They Are A Last Resort
# https://learnsome.tech/courses/terraform-course/watch?lesson=m05l05
# © LearnSome.tech
resource "null_resource" "example" {
  triggers = {
    name = var.name
  }
}

variable "name" {
  type = string
}
