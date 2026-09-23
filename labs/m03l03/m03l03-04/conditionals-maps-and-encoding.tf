# Infrastructure as Code with Terraform — lesson m03l03 — Functions And Expressions In HCL
# https://learnsome.tech/courses/terraform-course/watch?lesson=m03l03
# © LearnSome.tech
locals {
  tier  = var.production ? "large" : "small"
  tags  = merge(var.tags, { ManagedBy = "terraform" })
  json  = jsonencode({ tier = local.tier, tags = local.tags })
  label = format("%s-%s", var.environment, local.tier)
}
