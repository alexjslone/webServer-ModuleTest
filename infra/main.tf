terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

module "ec2_instance" {
  source  = "app.terraform.io/alex27_Org/ec2-instanceDemo1/aws"
  version = "1.0.0"  # Replace with the correct version tag you pushed
}

provider "aws" {
  region = "us-west-1"
}
