resource "aws_instance" "testinstance" {
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
    Name = "testInstance"
  }
}

resource "null_resource" "null" {

  connection {
    user     = "${var.InstanceUser}"
    password = "${var.InstancePassword}"
    host     = "${aws_instance.testinstance.public_ip}"
    private_key = "${file(var.private_key_path)}"  
  }
provisioner "file" {
  source      = "./userdata/apache.sh"
  destination = "/home/ubuntu/apache.sh"
}

provisioner "remote-exec" {
    inline = [
      "chmod +x /home/ubuntu/apache.sh",
      "cd /home/ubuntu/",
      "sudo ./apache.sh >> remote-exec.log 2>&1"
    ]
  }
}


