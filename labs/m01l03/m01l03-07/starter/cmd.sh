#!/bin/sh
# In the video this ran in a directory terraform init had never touched; the lab initialises every
# directory first, so that is undone here to show the same error.
rm -rf .terraform .terraform.lock.hcl
terraform validate
