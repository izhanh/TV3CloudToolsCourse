resource "aws_instance" "webservers" {
  ami           = lookup(var.aws_amis, var.region)
  instance_type = var.instance_type
  count         = 3
  tags = {
    curs_tools_aws = "true"
    Name           = "ext_4723_ec2_curs"
  }
}
