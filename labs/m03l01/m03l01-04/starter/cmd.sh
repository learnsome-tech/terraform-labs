#!/bin/sh
terraform init>/dev/null;terraform plan|head -1
