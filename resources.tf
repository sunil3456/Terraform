resource "aws_vpc" "myvpc" {
    cidr_block = "${var.vpc_cidr}"
    instance_tenancy = "default"

    tags {
      Name = "myvpc"
      
    }
}
resource "aws_subnet" "subnets" {
    count = "${length(data.aws_availability_zones.azs.names[0])}"
    
    vpc_id     = "${aws_vpc.myvpc.id}"
    cidr_block = "${element(var.subnet_cidr,count.index)}"

    tags = {
        #index begins with zero but want to start from 1
        Name = "subnet-${count.index+1}"
      
  }
}
