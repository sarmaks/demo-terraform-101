output "region" {
  value = [
    "${var.location[var.region]}"
  ]
}

output "InstancePublicIP" {
  value = "${aws_instance.testinstance.public_ip}"
}
