resource "aws_instance" "example" {
  ami           = "${var.ami}"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo ${aws_instance.example.public_ip} > ip_address.txt"
  }
  provisioner "local-exec" {
    command = "echo `hostname`"
  }
  
}
