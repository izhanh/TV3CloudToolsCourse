terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region              = "eu-west-1"
  allowed_account_ids = ["310106061799"]
  profile             = "seca"
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
