resource "aws_vpc" "vpc" {
  cidr_block           = var.cidr
  enable_dns_hostnames = false
  enable_dns_support   = false
  tags = {
    curs_tools_aws = "true"
    Name           = "ext_4723_vpc_curs"
  }
}

resource "aws_subnet" "pub1" {
  cidr_block              = var.pub1_cidr
  vpc_id                  = aws_vpc.vpc.id
  map_public_ip_on_launch = true
  availability_zone       = data.aws_availability_zones.az.names[0]
  tags = {
    curs_tools_aws = "true"
    Name           = "ext_4723_vpc_subnetpub1_curs"
  }
}

resource "aws_subnet" "pub2" {
  cidr_block              = var.pub2_cidr
  vpc_id                  = aws_vpc.vpc.id
  map_public_ip_on_launch = true
  availability_zone       = data.aws_availability_zones.az.names[1]
  tags = {
    curs_tools_aws = "true"
    Name           = "ext_4723_vpc_subnetpub2_curs"
  }
}

resource "aws_subnet" "pri1" {
  cidr_block              = var.pri1_cidr
  vpc_id                  = aws_vpc.vpc.id
  map_public_ip_on_launch = true
  availability_zone       = data.aws_availability_zones.az.names[0]
  tags = {
    curs_tools_aws = "true"
    Name           = "ext_4723_vpc_subnetpri1_curs"
  }
}

resource "aws_subnet" "pri2" {
  cidr_block              = var.pri2_cidr
  vpc_id                  = aws_vpc.vpc.id
  map_public_ip_on_launch = true
  availability_zone       = data.aws_availability_zones.az.names[1]
  tags = {
    curs_tools_aws = "true"
    Name           = "ext_4723_vpc_subnetpri2_curs"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
}

resource "aws_route" "default_route" {
  route_table_id         = aws_vpc.vpc.default_route_table_id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}
