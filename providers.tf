provider "aws" {
  region = "eu-west-1"
}


terraform {
  backend "s3" {
    bucket         = "gazal-s3bucket-date"
    key            = "globalstate/s3/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "gazal-date-dblocks"
    encrypt        = true
  }
}
