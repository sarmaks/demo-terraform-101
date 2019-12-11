provider "aws" {
  region     = "${var.region}"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

variable "region" {
    default = "us-east-1"
}

variable "access_key" {
    default = ""
}

variable "secret_key" {
    default = ""
}