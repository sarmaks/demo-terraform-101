resource "aws_instance" "ec2instance" {
  count = 2
  ami                                 = "${var.ami_id[var.region]}"
  instance_type                       = "t2.micro"
  vpc_security_group_ids              = ["${aws_security_group.testsg.id}"]
  associate_public_ip_address         = true
  subnet_id                           = "${aws_subnet.testsubnet.id}"
  key_name                            = "${aws_key_pair.testkeypair.id}"
  user_data = "${file("./userdata/change_password.sh")}"
  root_block_device {
  delete_on_termination = "true"
  }

  tags = {
    Name = "testInstance${count.index}"
  }

}


