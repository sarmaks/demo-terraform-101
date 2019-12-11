resource "aws_internet_gateway" "testigw" {
  vpc_id = "${aws_vpc.testVPC.id}"

  tags = {
    Name = "testigw"
  }
}