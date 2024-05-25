terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.51.1"
    }
  }
}

provider "aws" {
  region  = var.region
  profile = var.profile
#   assume_role {
#     role_arn = "arn:aws:iam::${var.account_id}:role/Terraform"
#   }
}