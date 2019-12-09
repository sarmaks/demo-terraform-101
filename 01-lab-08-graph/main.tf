data "aws_vpc" "default" {
  default = true
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = "${data.aws_vpc.default.id}"

  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    #cidr_blocks = # add your IP address here
  }

  tags = {
    Name = "allow_all"
  }
}

resource "aws_instance" "example" {
  ami           = "${var.ami}"
  instance_type = "t2.micro"
  security_groups = [aws_security_group.allow_tls.id]
   
}
