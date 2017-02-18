#!/bin/sh

# BASH script that creates the Terraform Plan 

terraform plan -var-file=$TERRAGLOBAL -out=$1.out