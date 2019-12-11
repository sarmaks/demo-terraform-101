resource "aws_route_table" "testrt" {
  vpc_id = "${aws_vpc.testVPC.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.testigw.id}"
  }

  tags = {
    Name = "testrt"
  }
}