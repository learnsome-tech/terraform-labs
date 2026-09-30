#!/bin/sh
terraform init>/dev/null;terraform apply -auto-approve|head -1
