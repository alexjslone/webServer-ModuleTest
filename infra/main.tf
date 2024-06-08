terraform {
  backend "remote" {
    organization = "alex27_Org"
    workspaces {
      name = "webServer-ModuleTest"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

module "ec2_instance" {
  source  = "app.terraform.io/alex27_Org/ec2-instanceDemo1/aws"
  version = "1.0.0"  # Ensure this matches the tag in your GitHub repo
}

provider "aws" {
  region = "us-west-1"
}
