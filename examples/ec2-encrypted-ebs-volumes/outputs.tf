output "ec2_id" {
  value = ["${module.ec2.id}"]
}

output "ec2_private_ip" {
  value = ["${module.ec2.private_ip}"]
}