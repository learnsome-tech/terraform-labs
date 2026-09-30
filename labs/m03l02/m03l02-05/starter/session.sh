#!/bin/sh
# Terminal session from the video, as a script you can run.
# Each command below was typed at the $ prompt; the commented lines under
# it are what the terminal printed back. Run it with:  sh session.sh

terraform output
#   ╷
#   │ Warning: No outputs found
#   │
#   │ The state file either has no outputs defined, or all the defined outputs
#   │ are empty. Please define an output in your configuration with the `output`
#   │ keyword and run `terraform refresh` for it to become available. If you are
#   │ using interpolation, please verify the interpolated value is not empty. You
#   │ can use the `terraform console` command to assist.
#   ╵
terraform output -raw summary
terraform output -json machine_names
#   ╷
#   │ Error: Output "machine_names" not found
#   │
#   │ The output variable requested could not be found in the state file. If you
#   │ recently added this to your configuration, be sure to run `terraform
#   │ apply`, since the state won't be updated with new output variables until
#   │ that command is run.
#   ╵
