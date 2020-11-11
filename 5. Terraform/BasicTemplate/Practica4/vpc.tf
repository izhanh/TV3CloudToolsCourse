resource "aws_vpc" "vpc" {
  cidr_block           = var.cidr
  enable_dns_hostnames = false
  enable_dns_support   = false
  tags = {
    curs_tools_aws = "true"
    Name           = "ext_4723_vpc_curs"
  }
}
