#!/bin/sh
# Terminal session from the video, as a script you can run.
# Each command below was typed at the $ prompt; the commented lines under
# it are what the terminal printed back. Run it with:  sh session.sh

TF_VAR_environment=prod terraform plan | grep filename
#         + filename             = "staging.json"
terraform plan -var environment=dev | grep filename
#         + filename             = "dev.json"
