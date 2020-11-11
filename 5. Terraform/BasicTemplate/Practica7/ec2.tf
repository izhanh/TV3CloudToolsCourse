resource "aws_instance" "web" {
  ami           = "ami-06fd8a495a537da8b"
  instance_type = "t2.micro"
  tags = {
    curs_tools_aws = "true"
    Name           = "ext_4723_ec2_curs"
  }
}
