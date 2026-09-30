#!/bin/sh
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
