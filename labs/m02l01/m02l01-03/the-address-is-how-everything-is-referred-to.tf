# Infrastructure as Code with Terraform — lesson m02l01 — Writing Your First Configuration In HCL
# https://learnsome.tech/courses/terraform-course/watch?lesson=m02l01
# © LearnSome.tech
resource "local_file" "greeting" { ... }

          local_file.greeting            the address
          local_file.greeting.filename   an attribute of it
          local_file.greeting.id         set by the provider on apply
