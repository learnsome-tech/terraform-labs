#!/bin/sh
terraform init -input=false >/dev/null && terraform plan
