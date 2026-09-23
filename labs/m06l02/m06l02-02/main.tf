# Infrastructure as Code with Terraform — lesson m06l02 — Simulating A Managed Database
# https://learnsome.tech/courses/terraform-course/watch?lesson=m06l02
# © LearnSome.tech
resource "null_resource" "example" {
  triggers = {
    owner = "course"
  }
}

output "resource_id" {
  value = null_resource.example.id
}
