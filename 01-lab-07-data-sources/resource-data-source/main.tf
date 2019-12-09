
data "aws_ami" "example" {
  most_recent = true

  owners = ["137112412989"]
  tags = {
    Name   = "amzn-ami-hvm*"
  }
}

resource "aws_instance" "example" {
  ami           = data.aws_ami.example.id
  instance_type = "t2.micro"
}

data "aws_vpc" "example" {
  default = true
}

data "aws_subnet_ids" "example" {
  vpc_id = data.aws_vpc.example.id
}

