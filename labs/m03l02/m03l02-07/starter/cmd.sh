#!/bin/sh
terraform plan -var environment=dev 2>&1|head -1
