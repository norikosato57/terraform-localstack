terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket         = "terraform-backend"
    key            = "example/terraform.tfstate"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}

# Configuration for the AWS provider.
provider "aws" {
  region = "ap-northeast-1"
  #profile = "terraform"
}
