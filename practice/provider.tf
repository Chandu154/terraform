# terraform {
#   required_providers {
#     aws = {
#       source = "hashicorp/aws"
#       version = "5.15.0"
#     }
#   }
# }

# provider "aws" {
#   # Configuration options
#   # you can give access key and secret key here, but security problem
#   region = "us-east-1"
# }


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}