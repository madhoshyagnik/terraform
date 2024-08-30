#ubuntu ami
# ami-02b49a24cfb95941c

provider "aws" {
  region = "ap-south-1"
}


resource "aws_instance" "terraform_instance" {
    ami = "ami-02b49a24cfb95941c"
    key_name = "debian"
    instance_type = "t2.micro"
  
}