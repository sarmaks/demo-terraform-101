variable "ami" {
  description = "The Amazon Machine Image for new instances."
  default     = "ami-08d489468314a58df"
}

variable "instance_type" {
  default     = "t2.micro"
  description = "instance_type to be used for the instance"
}

variable "region" {
  default = "us-west-2"
}
