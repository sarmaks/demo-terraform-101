resource "aws_vpc" "vpc" {
  cidr_block       = "10.0.0.0/24"
  instance_tenancy = "dedicated"

  tags = {
    Name = "testvpcmodified"
  }

  # lifecycle {
  #   ignore_changes = [
  #     tags["Name"],
  #   ]
  # }

}
