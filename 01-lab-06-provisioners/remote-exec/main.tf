resource "aws_key_pair" "example" {
  key_name = "examplekey"
  public_key = file("~/.ssh/id_rsa.pub")
}



resource "aws_instance" "example" {
  ami           = "${var.ami}"
  instance_type = "t2.micro"
  key_name = aws_key_pair.example.key_name

  provisioner "local-exec" {
    command = "echo `hostname`"
  }
   connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("~/.ssh/id_rsa")
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "echo `hostname`",
      "cat /proc/cpuinfo"
    ]
  }

}