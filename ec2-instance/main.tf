provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "terraform_instance" {
    ami = "ami-0522ab6e1ddcc7055"
    instance_type = "t2.micro"
    key_name = "debian"
}

# create s3 for statefile earlier

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  
}