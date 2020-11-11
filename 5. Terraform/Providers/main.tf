terraform {
  required_version = ">= 0.12"
  backend "s3" {
    bucket         = "tv3-curs-states"
    region         = "eu-west-1"
    key            = "states-tfstate"
    dynamodb_table = "tv3-curs-lockin"
    profile        = "seca"
  }
}

provider "aws" {
  region              = var.region
  allowed_account_ids = [var.aws_id]
  profile             = var.aws_profile
}

resource "aws_vpc" "vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    curs_tools_aws = "true"
    Name           = "ext_4723_vpc_curs"
  }
}
