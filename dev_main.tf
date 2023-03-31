terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region  = "us-west-2"
}

module "dev_instance" {
  source = "./module"
  environment = {
    name = "prod"
    network_prefix = "10.2"
  }
}