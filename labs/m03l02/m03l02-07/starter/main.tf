variable "environment" { type = string }
variable "instance_count" { type = number }
locals {
  prefix = "${var.environment}-orders"
  machine_names = [for i in range(2) : format("%s-%d",local.prefix,i)]
  tags = merge({}, { Environment = var.environment })
}
resource "local_file" "manifest" {
  filename = "${var.environment}.json"
  content = jsonencode({ machines = local.machine_names, tags = local.tags })
}
