variable "ami" {
  description = "The Amazon Machine Image for new instances."
  default     = "ami-08d489468314a58df"
}

variable "ingress_cidr" {
  default     = "0.0.0.0/0"
  description = "IP block from which connections to this instance will be made"
}

variable "region" {
  default = "us-west-2"
}

variable "subnet_id" {
  description = "subnet to place the ec2 instance"  
}
