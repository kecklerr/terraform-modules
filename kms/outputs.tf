output "id" {
  description = "kms key id"
  value = "${aws_kms_key.kms_key.id}"
}

output "arn" {
  description = "kms key arn"
  value = "${aws_kms_key.kms_key.arn}"
}