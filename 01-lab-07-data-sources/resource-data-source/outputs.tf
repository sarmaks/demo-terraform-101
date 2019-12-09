output "instance_id" {
  value = "${aws_instance.example.id}"
}

output "subnet_ids" {
  value = "${data.aws_subnet_ids.example.ids}"
}