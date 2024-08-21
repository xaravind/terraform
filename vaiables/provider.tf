terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.63.1"
    }
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}