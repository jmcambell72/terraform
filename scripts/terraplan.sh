#!/bin/sh

# BASH script that creates the Terraform Plan 

TERRAGLOBAL=/home/ubuntu/terraform/global/base_aws.tfvars

export TERRAGLOBAL

terraform plan -var-file=$TERRAGLOBAL -out=$1.out