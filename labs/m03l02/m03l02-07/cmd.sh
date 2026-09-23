#!/bin/sh
# Infrastructure as Code with Terraform — lesson m03l02 — Return Values: Outputs And Locals
# https://learnsome.tech/courses/terraform-course/watch?lesson=m03l02
# © LearnSome.tech
terraform plan -var environment=dev 2>&1|head -1
