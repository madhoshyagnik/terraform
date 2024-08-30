terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "statefile/terraform.tfstate"
    region = "ap-south-1"
  }
}
