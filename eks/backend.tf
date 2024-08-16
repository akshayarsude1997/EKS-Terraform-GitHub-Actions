terraform {
  required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "my-buckets-1997"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "new-table"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
