# Infrastructure as Code with Terraform — lesson m03l02 — Return Values: Outputs And Locals
# https://learnsome.tech/courses/terraform-course/watch?lesson=m03l02
# © LearnSome.tech
output "admin_password" {
  value     = random_password.admin.result
  sensitive = true
}
terraform output admin_password        (sensitive value)
terraform output -raw admin_password   prints it, on purpose
