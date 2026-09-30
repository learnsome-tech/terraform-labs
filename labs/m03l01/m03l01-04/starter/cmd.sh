#!/bin/sh
terraform init>/dev/null;terraform plan -var environment=dev
