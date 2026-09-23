# Infrastructure as Code with Terraform — lesson m02l01 — Writing Your First Configuration In HCL
# https://learnsome.tech/courses/terraform-course/watch?lesson=m02l01
# © LearnSome.tech
# a comment, to the end of the line
// also a comment, less common
/* a block comment, rarely worth it */

name    = "literal"
greet   = "hello ${var.name}"      interpolation
script  = <<-EOT                   heredoc: multiple lines
  line one
  line two
EOT
