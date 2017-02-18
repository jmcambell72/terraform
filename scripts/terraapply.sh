#!/bin/sh

# BASH script that creates the Terraform Plan 

TERRAGLOBAL=/home/ubuntu/terraform/global/base_aws.tfvars

export TERRAGLOBAL

# Perform Apply 

terraform apply -var-file=$TERRAGLOBAL