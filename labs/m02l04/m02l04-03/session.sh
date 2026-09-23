#!/bin/sh
# Infrastructure as Code with Terraform — lesson m02l04 — Tearing It Down With Destroy
# https://learnsome.tech/courses/terraform-course/watch?lesson=m02l04
# © LearnSome.tech
# Terminal session from the video, as a script you can run.
# Each command below was typed at the $ prompt; the commented lines under
# it are what the terminal printed back. Run it with:  sh session.sh

cat hello.txt
#   Hello from Terraform
terraform state list
#   local_file.greeting
