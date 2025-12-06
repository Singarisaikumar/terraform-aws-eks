terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.24.0"
    }
  }
  backend "s3" {
    bucket = "devopswithaws.store"
    key    = "terraform-aws-eks-sg"
    region = "us-east-1"
    encrypt      = true
    use_lockfile = true 
  }
}

provider "aws" {
  region = "us-east-1"
}

  # Configuration options
