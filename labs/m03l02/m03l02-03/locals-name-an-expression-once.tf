# Infrastructure as Code with Terraform — lesson m03l02 — Return Values: Outputs And Locals
# https://learnsome.tech/courses/terraform-course/watch?lesson=m03l02
# © LearnSome.tech
locals {
  name_prefix   = "${var.environment}-orders"
  machine_names = [for i in range(2) : format("%s-%02d", local.prefix, i + 1)]
  tags = merge({}, {
    Environment = var.environment
    ManagedBy   = "terraform"
  })
}
