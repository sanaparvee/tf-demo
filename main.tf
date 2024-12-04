terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
}

#resource "aws_s3_bucket" "my_bucket" {
  bucket = "dummy-udp-poc-bucket"

  tags = {
    Environment = "Development"
    Project     = "Terraform"
    Owner       = "DE-Team"
  }
}#
