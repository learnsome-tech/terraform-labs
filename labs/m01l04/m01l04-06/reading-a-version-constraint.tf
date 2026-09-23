# Infrastructure as Code with Terraform — lesson m01l04 — Providers And The required_providers Block
# https://learnsome.tech/courses/terraform-course/watch?lesson=m01l04
# © LearnSome.tech
version = "3.6.0"           exactly this, and nothing else
version = ">= 3.6.0"        this or anything newer, forever
version = "~> 3.6"          3.6, 3.7, 3.8 ... but not 4.0
version = "~> 3.6.0"        3.6.0, 3.6.1 ... but not 3.7.0
version = ">= 3.6, < 4.0"   the same idea, spelled out
