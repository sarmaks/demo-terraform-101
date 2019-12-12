terraform {
  required_version = ">= 0.11.14"
}

provider "aws" {
  region  = "${var.region}"
  version = ">= 2.20.0"
}
