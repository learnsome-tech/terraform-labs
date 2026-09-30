terraform {
  required_version = ">= 1.6.0"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}
resource "local_file" "manifest" {
  filename = "${var.environment}.json"
  content = jsonencode({
    environment = var.environment
    machines    = var.instance_count
    tags        = var.tags
  })
}
