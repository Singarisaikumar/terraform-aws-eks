terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.95.0"
    }
  }
  backend "s3" {
    bucket = "devopswithaws.store"
    key    = "terraform-aws-eks-eks"
    region = "us-east-1"
    encrypt      = true
    use_lockfile = true 
  }
}

provider "aws" {
  region = "us-east-1"
}

  # Configuration options

# terraform {
#   required_providers {
#     aws = {
#       source = "hashicorp/aws"
#       version = "5.95.0"
#     }
#   }
#   backend "s3" {
#     bucket = "devopswithaws.store"
#     key    = "terraform-aws-eks-eks"
#     region = "us-east-1"
#     dynamodb_table = "devopswithaws.store"
#   }
# }

#provide authentication here
# provider "aws" {
#   region = "us-east-1"
# }