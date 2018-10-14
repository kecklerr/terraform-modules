output "ec2_id" {
  description = "EC2 ids created"
  value = ["${module.ec2.id}"]
}

output "ec2_private_ip" {
  description = "EC2s private ips"
  value = ["${module.ec2.private_ip}"]
}

output "ec2_az" {
  description = "Availability zones EC2s are located"
  value = "${module.ec2.availability_zone}"
}

output "kms_key_id" {
  description = "KMS Key id for encrypting root volumes and ebs volumes"
  value = "${module.kms_key.id}"
}

output "kms_key_arn" {
  description = "KMS Key arn for encrypting root volumes and ebs volumes"
  value = "${module.kms_key.arn}"
}