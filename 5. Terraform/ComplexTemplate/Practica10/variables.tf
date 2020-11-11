variable "aws_region" {
  type    = string
  default = "eu-west-1"
}
variable "cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "pub1_cidr" {
  type    = string
  default = "10.0.0.0/24"
}

variable "pub2_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "pri1_cidr" {
  type    = string
  default = "10.0.10.0/24"
}

variable "pri2_cidr" {
  type    = string
  default = "10.0.11.0/24"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "region" {
  type    = string
  default = "eu-west-1"
}

variable "aws_id" {
  type    = string
  default = "310106061799"
}

variable "aws_profile" {
  type    = string
  default = "seca"
}

variable "aws_amis" {
  type = map
  default = {
    "eu-west-1" = "ami-06fd8a495a537da8b"
    "eu-west-2" = "ami-05c424d59413a2876"
    "eu-west-2" = "ami-078db6d55a16afc82"
  }
}

variable "project" {
  type    = string
  default = "web"
}

variable "environment" {
  type    = string
  default = "prod"
}
