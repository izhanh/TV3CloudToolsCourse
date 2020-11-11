resource "aws_instance" "web-server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    curs_tools_aws = "true"
    Name           = "ext_4723_ec2_curs"
  }
}
