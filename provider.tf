terraform {
   backend "s3" {
    bucket           = "nyayavedhika-terraform-state"
    dynamodb_table   = "nyayavedhika-terraform-locks"
    key              = "terraform/mystatefile/terraform.tfstate"
    region           = "us-east-1"
    encrypt          = true
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.84.0"
    }
  }
}

provider "aws" {
# Configuration options
# Provide the AWS public and private keys of an service account or root account
    region = "us-east-1"
    access_key = "AKIA5IJOWSPQWAWVP6C6"
    secret_key = "QmvTsgSYTadgK5ouoI2Fj1O3dG9AtwEMM9b11tZNB"
}