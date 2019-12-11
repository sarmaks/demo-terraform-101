resource "aws_route_table_association" "subnetrtassociation" {
  subnet_id      = "${aws_subnet.testsubnet.id}"
  route_table_id = "${aws_route_table.testrt.id}"
}