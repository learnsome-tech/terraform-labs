#!/bin/sh
# Infrastructure as Code with Terraform — lesson m03l04 — Querying Existing Infrastructure With Data Sources
# https://learnsome.tech/courses/terraform-course/watch?lesson=m03l04
# © LearnSome.tech
terraform init>/dev/null;terraform apply -auto-approve|head -1
