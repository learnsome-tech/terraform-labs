# a comment, to the end of the line
// also a comment, less common
/* a block comment, rarely worth it */

name    = "literal"
greet   = "hello ${var.name}"      interpolation
script  = <<-EOT                   heredoc: multiple lines
  line one
  line two
EOT
