terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.69.0" # AWS provider version, not terraform version
    }
  }
  
  backend "s3" {
    bucket = "daws-tfstate"
    key    = "provisioner"
    region = "us-east-1"
    dynamodb_table = "daws-tflocking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
