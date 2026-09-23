# Infrastructure as Code with Terraform — lesson m06l03 — Detecting And Fixing Configuration Drift
# https://learnsome.tech/courses/terraform-course/watch?lesson=m06l03
# © LearnSome.tech
resource "null_resource" "example" {
  triggers = {
    owner = "course"
  }
}

output "resource_id" {
  value = null_resource.example.id
}
