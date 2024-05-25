terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.51.1"
    }
  }
  backend "s3" {
    encrypt        = true
    bucket         = "eks-lab-smarzaro"
    key            = "cluster.tfstate"
    profile        = "default"
    region         = "us-east-1"
    dynamodb_table = "dock-tf-locks"
  }
}


provider "aws" {
  region  = var.region
  profile = var.profile
  #   assume_role {
  #     role_arn = "arn:aws:iam::${var.account_id}:role/Terraform"
  #   }
}