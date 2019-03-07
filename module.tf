
provider "aws" {
    region = "${var.region}"
}

module "my_vpc" {
  source = "../module"
  vpc_cidr = "192.168.0.0/16"
  vpc_id = "${module.my_vpc.vpc_id}"
  subnet_cidr = "192.168.1.0/24"
}

module "ec2" {
  source = "../modules/vpcsubnets"
  ec2_count = "1"
  ec2_ami = "ami-0f9cf087c1f27d9b1"
  instance_type = "t2.micro"
  subnet_id = "${module.my_vpc.subnet_id}"
}

