output "id" {
  description = "ebs volume id"
  value       = ["${aws_ebs_volume.ebs.*.id}"]
}

output "arn" {
  description = "ebs arn of volume"
  value       = ["${aws_ebs_volume.ebs.*.arn}"]
}
