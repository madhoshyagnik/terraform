# create bucket and dynamodb table first before using backend to avoid issues

terraform {
  backend "s3" {
    bucket = "terraform-state-file-123129038290"
    key    = "statefile/terraform.tfstate"
    region = "ap-south-1"
    # dynamodb_table = "terraform_lock"
  }
}
