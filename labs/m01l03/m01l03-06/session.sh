#!/bin/sh
# Infrastructure as Code with Terraform — lesson m01l03 — Installing Terraform And Meeting The CLI
# https://learnsome.tech/courses/terraform-course/watch?lesson=m01l03
# © LearnSome.tech
# Terminal session from the video, as a script you can run.
# Each command below was typed at the $ prompt; the commented lines under
# it are what the terminal printed back. Run it with:  sh session.sh

sed -n '3,9p' main.tf
#     required_providers {
#       local = {
#         source  = "hashicorp/local"
#         version = "~> 2.5"
#       }
#     }
#   }
terraform fmt -check
