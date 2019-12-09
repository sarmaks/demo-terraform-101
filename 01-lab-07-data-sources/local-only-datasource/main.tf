
data "template_file" "user-data" {
  template = "${file("scripts/user-data.tpl")}"
  vars = {
    public_key = file("~/.ssh/id_rsa.pub")
  }
}
resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = "t2.micro"

  user_data = "${data.template_file.user-data.rendered}"
}

