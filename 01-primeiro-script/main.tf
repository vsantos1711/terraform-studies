terraform {
  required_version = "1.7.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.43.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my-example-bucktet" {
  bucket = "my-tf-test-bucket-067100"

  tags = {
    Name        = "My terraform test bucket"
    Environment = "Dev"
    Managedby   = "Terraform"
  }
}
