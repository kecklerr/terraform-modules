output "id" {
  description = "AMI ID created"
  value       = "${data.aws_ami.ami.id}"
}

output "name" {
  description = "AMI name created"
  value       = "${data.aws_ami.ami.name}"
}

output "encrypted_id" {
  description = "Encrpted ami id"
  value       = "${data.aws_ami.encrypted_ami.id}"
}

