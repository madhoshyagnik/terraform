provider "aws" {
    region = "ap-south-1"
}

module "ec2_instance" {
    source = "./module/ec2_instance"
    ami_id = "ami-0522ab6e1ddcc7055"
    instance_type = "t2.micro"
    key_name = "debian"
}

module "aws_s3_bucket" {
    source = "./module/s3"
    bucket_name = "terraform-test-bucket-123123123123" 
}