#!/bin/sh
# Terminal session from the video, as a script you can run.
# Each command below was typed at the $ prompt; the commented lines under
# it are what the terminal printed back. Run it with:  sh session.sh

terraform console
#
terraform output -json
#   {
#     "first_name": {
#       "sensitive": false,
#       "type": "string",
#       "value": "ada"
#     },
#     "headline": {
#       "sensitive": false,
#       "type": "string",
#       "value": "Ada, Linus, Grace"
#     }
#   }
