#!/bin/sh
# Terminal session from the video, as a script you can run.
# Each command below was typed at the $ prompt; the commented lines under
# it are what the terminal printed back. Run it with:  sh session.sh

cat hello.txt
#   Hello from Terraform
terraform plan
#   local_file.greeting: Refreshing state... [id=2ee5d2acea249b250d0c5886f5016929abd6d1b7]
#   
#   No changes. Your infrastructure matches the configuration.
#   
#   Terraform has compared your real infrastructure against your configuration
#   and found no differences, so no changes are needed.
