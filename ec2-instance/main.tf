provider "aws" {
    region = "ap-south-1"
  
}

resource "aws_instance" "terraform_instance" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
}
