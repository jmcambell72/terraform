# File : 3tier.tf
# Date : 12.02.2017
# 
# Define terraform for creating a three tier stack, the three tier stack will be based upon a customer Ubuntu image with Python 2.x installed to allow Ansible management 
#
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

# define web tier instance 
resource "aws_instance" "web" {
  ami           = "ami-9e597ff8"
  instance_type = "t2.micro"
  key_name = "keyname"
  vpc_security_group_ids = ["xx1","xx2"]
}

# define app tier instance
resource "aws_instance" "app" {
  ami           = "ami-9e597ff8"
  instance_type = "t2.micro"
  key_name = "keyname"
  vpc_security_group_ids = ["xx1","xx2"]
}

# define db tier instance
resource "aws_instance" "db" {
  ami           = "ami-9e597ff8"
  instance_type = "t2.micro"
  key_name = "keyname"
  vpc_security_group_ids = ["xx1","xx2"]
}