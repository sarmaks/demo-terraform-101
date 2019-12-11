provider "github" {
  token        = "${var.github_token}"
  organization = "${var.github_organization}"
}

variable "github_token" {
   default = ""
}

variable "github_organization" {
   default = ""
}