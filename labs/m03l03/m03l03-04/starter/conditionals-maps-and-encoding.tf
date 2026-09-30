locals {
  tier  = var.production ? "large" : "small"
  tags  = merge(var.tags, { ManagedBy = "terraform" })
  json  = jsonencode({ tier = local.tier, tags = local.tags })
  label = format("%s-%s", var.environment, local.tier)
}
