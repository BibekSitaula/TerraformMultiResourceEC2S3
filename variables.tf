variable "aws_region" {
  description = "AWS region of eu-north-1 where my resources will be created"
  default = "eu-north-1"
}

variable "instance_type" {
description = "My Ec2 instance type"
default = "t3.micro"

}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  default = "ami-075449515af5df0d1"
}

variable "key_pair_name" {
  description = "key pair login of EC2"
  default = "ec2login"
}

variable "security_group_name" {
  description = "Name of my security group"
  default = "my-security-group"
}


variable "vpc_id" {
  description = "VPC where my EC2 instance will be launched"
  default = "vpc-0c1f0c88969a3b6e6"

}

variable "subnet_id" {
  description = "ID of subnet where my EC2 instance will be launched"
  default = "subnet-0a4ea57de97d91dae"
}

variable "bucket_name" {
  description = "Name of the S3 Bucket"
  default = "mra-unique-bucket-for-terraform-proj"
}