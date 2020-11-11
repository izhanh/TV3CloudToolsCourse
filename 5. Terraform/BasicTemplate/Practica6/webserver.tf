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

data "template_file" "userdata" {
  template = file("templates/userdata.tpl")
  vars = {
    webserver = "apache2"
  }
}

resource "aws_instance" "web-server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  user_data     = data.template_file.userdata.rendered
  key_name      = "ext_4723_keypair_curs"
  tags = {
    curs_tools_aws = "true"
    Name           = "ext_4723_ec2_curs"
  }
}
