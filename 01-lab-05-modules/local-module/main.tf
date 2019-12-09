module "web" {
  # Source can be any URL or file path  
  source = "./my-module"
  ami    = "${var.ami}"
  instance_type = "t2.micro"
}

module "db" {
  # Source can be any URL or file path  
  source = "./my-module"
  ami    = "${var.ami}"
  instance_type = "t2.micro"
}
