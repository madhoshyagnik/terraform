terraform {
  backend "s3" {
    bucket = "terraform-state-file-123129038290"
    key    = "statefile/terraform.tfstate"
    region = "ap-south-1"
  }
}
