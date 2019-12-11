resource "aws_subnet" "testsubnet" {
  vpc_id     = "${aws_vpc.testVPC.id}"
  cidr_block = "10.0.1.0/24"
  availability_zone = "${data.aws_availability_zones.az.names[0]}"
  map_public_ip_on_launch = true
  tags = {
    Name = "testsubnet"
  }
}