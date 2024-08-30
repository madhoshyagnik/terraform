#ubuntu ami
# ami-02b49a24cfb95941c

provider "aws" {
  region = "ap-south-1"
}

variable "ami_id" {
    description = "some description"
    type = string
    default = "ami-02b49a24cfb95941c"
}

variable "key_name" {
    type = string
    default = "debian"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

resource "aws_instance" "terraform_instance" {
    ami = var.ami_id
    key_name = var.key_name
    instance_type = var.instance_type
}

output "public_ip" {
    value = aws_instance.terraform_instance.public_dns
}