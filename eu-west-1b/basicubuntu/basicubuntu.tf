# File : terra_aws1.tf
# Date : 12.02.2017
# 
# Base terraform for creating a custom developed AMI image this file calls ubuntu+python image. This allows me to manage using Ansible. 

# define variables for access and secret key
variable "access_key" {}
variable "secret_key" {}

# define variables for security groups, define a security group name and then define the AWS security group ID
variable "custom-security" {
  default = "xx1"
}
variable "default-security" {
  default = "xx2"
}
# set-up provider, pulling in variables from define section
provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "eu-west-1"
}

# base structure for an aws instance
resource "aws_instance" "aws1" {
  ami           = "ami-9e597ff8"
  instance_type = "t2.micro"
  key_name = "xxx"
#  security_groups = ["${var.custom-security}","${var.default-security}"]
  vpc_security_group_ids = ["xx1","xx2"]
}
