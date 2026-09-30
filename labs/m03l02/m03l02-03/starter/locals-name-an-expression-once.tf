locals {
  name_prefix   = "${var.environment}-orders"
  machine_names = [for i in range(2) : format("%s-%02d", local.prefix, i + 1)]
  tags = merge({}, {
    Environment = var.environment
    ManagedBy   = "terraform"
  })
}
