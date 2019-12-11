provider "oci" {
  tenancy_ocid = "${var.tenancy_ocid}"
  user_ocid = "${var.user_ocid}"
  fingerprint = "${var.fingerprint}"
  private_key_path = "${var.private_key_path}"
  region = "${var.region}"
}

variable "tenancy_ocid" {
    default = ""
}

variable "user_ocid" {
    default = ""
}

variable "fingerprint" {
    default = ""
}

variable "private_key_path" {
    default = ""
}

variable "region" {
    default = ""
}