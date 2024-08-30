provider "aws" {
    region = "ap-south-1"
  
}

variable "ami_id" {
    description = "value of the ami"
  
}

variable "instance_type" {
    description = "value for instance type"
  
}

variable "key_name" {
    description = "key you want to use to launch the instance"
  
}

resource "aws_instance" "terraform_instance" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
}
