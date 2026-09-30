terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}
resource "local_file" "source" {
  filename = "source.txt"
  content  = "managed elsewhere"
}
data "local_file" "source" {
  filename = local_file.source.filename
}
output "read_content" {
  value = data.local_file.source.content
}
