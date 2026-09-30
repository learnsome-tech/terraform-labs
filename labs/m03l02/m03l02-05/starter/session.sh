#!/bin/sh
# Terminal session from the video, as a script you can run.
# Each command below was typed at the $ prompt; the commented lines under
# it are what the terminal printed back. Run it with:  sh session.sh

terraform output
#   machine_names = [
#     "staging-orders-0",
#     "staging-orders-1",
#   ]
#   manifest_path = "staging.json"
#   summary = "staging: 2 machines"
terraform output -raw summary
#   staging: 2 machines
terraform output -json machine_names
#   ["staging-orders-0","staging-orders-1"]
