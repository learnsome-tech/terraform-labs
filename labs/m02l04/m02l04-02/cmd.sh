#!/bin/sh
# Infrastructure as Code with Terraform — lesson m02l04 — Tearing It Down With Destroy
# https://learnsome.tech/courses/terraform-course/watch?lesson=m02l04
# © LearnSome.tech
terraform init -input=false && terraform apply -auto-approve
