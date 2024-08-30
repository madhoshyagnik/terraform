provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "terraform_instance" {
    ami = "ami-0522ab6e1ddcc7055"
    instance_type = "t2.micro"
    key_name = "debian"
}