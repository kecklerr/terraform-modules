output "name" {
  value = "${aws_volume_attachment.volume.*.device_name}"
}

output "id" {
  value = "${aws_volume_attachment.volume.*.id}"
}