resource "aws_vpc" "vpc" {
  cidr_block       = "10.0.0.0/24"
  instance_tenancy = "dedicated"

  tags = {
    Name = "preventdestroyvpc"
  }

  lifecycle {
    prevent_destroy = true
  } 
}