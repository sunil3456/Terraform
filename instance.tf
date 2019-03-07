provider "aws" {
    region = "${var.region}"
}
resource "aws_instance" "webserver" {
  ami           = "${var.ec2_ami}"
  instance_type = "t2.micro"
  key_name = "${var.terraform}"
  vpc_security_group_ids = "${var.securitygroupid}"
  subnet_id = "${var.Subnet-3}"
  associate_public_ip_address = "true"
  
  tags = {
    Name = "webserver"
  }
}



