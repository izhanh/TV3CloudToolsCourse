data "aws_availability_zones" "az" {

}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-*"]
  }
}

resource "aws_instance" "web-server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  tags = {
    curs_tools_aws = "true"
    Name           = "ext_4723_ec2_curs"
  }
}
