resource "local_file" "greeting" {
  filename="hello.txt"
  content = "Hello from Terraform\n"
}

resource "local_file" "receipt" {
    filename = "receipt.txt"
    content = "wrote ${local_file.greeting.filename}\n"
}
