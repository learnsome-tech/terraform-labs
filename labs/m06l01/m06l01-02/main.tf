# Infrastructure as Code with Terraform — lesson m06l01 — What State Really Is And Why It Is Needed
# https://learnsome.tech/courses/terraform-course/watch?lesson=m06l01
# © LearnSome.tech
resource "null_resource" "example" {
  triggers = {
    owner = "course"
  }
}

output "resource_id" {
  value = null_resource.example.id
}
