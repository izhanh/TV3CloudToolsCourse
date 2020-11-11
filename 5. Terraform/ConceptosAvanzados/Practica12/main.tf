terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region              = var.region
  allowed_account_ids = [var.aws_id]
  profile             = var.aws_profile
}

data "aws_availability_zones" "az" {}

module "vpc" {
  source = "./modules/vpc"
}
