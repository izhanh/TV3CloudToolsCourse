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
