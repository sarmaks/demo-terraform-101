resource "aws_key_pair" "example" {
  key_name = "examplekey2"
  public_key = file("~/.ssh/id_rsa.pub")
}



resource "aws_instance" "example" {
  ami           = "${var.ami}"
  instance_type = "t2.micro"
  key_name = aws_key_pair.example.key_name

  
   connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("~/.ssh/id_rsa")
    host     = self.public_ip
  }

  provisioner "file" {
    source      = "assets"
    destination = "/tmp/"
  }
}
