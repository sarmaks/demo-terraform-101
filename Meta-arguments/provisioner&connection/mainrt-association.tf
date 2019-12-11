resource "aws_main_route_table_association" "testrtassociation" {
  vpc_id         = "${aws_vpc.testVPC.id}"
  route_table_id = "${aws_route_table.testrt.id}"
}