#!/bin/sh
# Terminal session from the video, as a script you can run.
# Each command below was typed at the $ prompt; the commented lines under
# it are what the terminal printed back. Run it with:  sh session.sh

TF_VAR_environment=prod terraform plan | grep filename
#   ╷
#   │ Error: Inconsistent dependency lock file
#   │
#   │ The following dependency selections recorded in the lock file are
#   │ inconsistent with the current configuration:
#   │   - provider registry.terraform.io/hashicorp/local: required by this configuration but no version is selected
#   │
#   │ To make the initial dependency selections that will initialize the
#   │ dependency lock file, run:
#   │   terraform init
#   ╵
terraform plan -var environment=dev | grep filename
#   ╷
#   │ Error: Inconsistent dependency lock file
#   │
#   │ The following dependency selections recorded in the lock file are
#   │ inconsistent with the current configuration:
#   │   - provider registry.terraform.io/hashicorp/local: required by this configuration but no version is selected
#   │
#   │ To make the initial dependency selections that will initialize the
#   │ dependency lock file, run:
#   │   terraform init
#   ╵
