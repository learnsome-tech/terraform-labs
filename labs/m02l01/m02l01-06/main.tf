# Infrastructure as Code with Terraform — lesson m02l01 — Writing Your First Configuration In HCL
# https://learnsome.tech/courses/terraform-course/watch?lesson=m02l01
# © LearnSome.tech
resource "local_file" "greeting" {
  filename="hello.txt"
  content = "Hello from Terraform\n"
}

resource "local_file" "receipt" {
    filename = "receipt.txt"
    content = "wrote ${local_file.greeting.filename}\n"
}
