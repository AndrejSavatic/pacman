terraform {
  required_version = ">=1.9.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.53.0"
    }
  }

  backend "s3" {
    bucket         = "pacman-bucket-andrej"
    key            = "state/terraform.tfstate"
    region         = "eu-north-1"
    encrypt        = true
    dynamodb_table = "pacman-table"
  }
}

provider "aws" {
  region = "eu-north-1"
}