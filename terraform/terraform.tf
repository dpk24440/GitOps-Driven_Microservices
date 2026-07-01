terraform {

  backend "s3" {
    bucket       = "condevmlops-terraform-backend-bucket-440"
    key          = "s3-backend"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = "6.38.0"
      version = ">= 6.52.0"

    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

