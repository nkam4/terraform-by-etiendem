terraform {
  backend "s3" {
    bucket = "terraform111"
    key    = "terraform/prod"
    region = "us-east-1"
  }
}

provider "aws" {
   region = var.region
}