terraform {
  required_version = ">= 1.6.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

resource "local_file" "greeting" {
  filename = "hello.txt"
  content  = "Hello from Terraform\n"
}

resource "local_file" "receipt" {
  filename = "receipt.txt"
  content  = "wrote ${local_file.greeting.filename}\n"
}
