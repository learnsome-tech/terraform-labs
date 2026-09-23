#!/bin/sh
# Infrastructure as Code with Terraform — lesson m03l03 — Functions And Expressions In HCL
# https://learnsome.tech/courses/terraform-course/watch?lesson=m03l03
# © LearnSome.tech
# Terminal session from the video, as a script you can run.
# Each command below was typed at the $ prompt; the commented lines under
# it are what the terminal printed back. Run it with:  sh session.sh

terraform console
#   ╷
#   │ Error: Duplicate variable declaration
#   │
#   │   on main.tf line 9:
#   │    9: variable "names" { default = ["Ada", "Linus", "Grace"] }
#   │
#   │ A variable named "names" was already declared at locals.tf:1,1-17. Variable
#   │ names must be unique within a module.
#   ╵
#   
#   ╷
#   │ Error: Duplicate local value definition
#   │
#   │   on main.tf line 11, in locals:
#   │   11:   normalised = [for name in var.names : lower(trimspace(name))]
#   │
#   │ A local value named "normalised" was already defined at locals.tf:7,3-64.
#   │ Local value names must be unique within a module.
#   ╵
#   
#   ╷
#   │ Error: Duplicate local value definition
#   │
#   │   on main.tf line 12, in locals:
#   │   12:   headline = join(", ", [for name in local.normalised : title(name)])
#   │
#   │ A local value named "headline" was already defined at locals.tf:8,3-71.
#   │ Local value names must be unique within a module.
#   ╵
terraform output -json
#   ╷
#   │ Error: Duplicate variable declaration
#   │
#   │   on main.tf line 9:
#   │    9: variable "names" { default = ["Ada", "Linus", "Grace"] }
#   │
#   │ A variable named "names" was already declared at locals.tf:1,1-17. Variable
#   │ names must be unique within a module.
#   ╵
#   ╷
#   │ Error: Duplicate local value definition
#   │
#   │   on main.tf line 11, in locals:
#   │   11:   normalised = [for name in var.names : lower(trimspace(name))]
#   │
#   │ A local value named "normalised" was already defined at locals.tf:7,3-64.
#   │ Local value names must be unique within a module.
#   ╵
#   ╷
#   │ Error: Duplicate local value definition
#   │
#   │   on main.tf line 12, in locals:
#   │   12:   headline = join(", ", [for name in local.normalised : title(name)])
#   │
#   │ A local value named "headline" was already defined at locals.tf:8,3-71.
#   │ Local value names must be unique within a module.
#   ╵
