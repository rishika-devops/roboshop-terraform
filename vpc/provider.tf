terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.53.0"
    }
  }
  backend "s3" {
    bucket         = "sowjanya-remote-state"
    key            = "vpc-module"
    region         = "us-east-1"
    dynamodb_table = "remote-state-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}