resource "aws_instance" "ec2" {
  count                       = "${var.count}"
  ami                         = "${var.ami_id}"
  instance_type               = "${var.instance_type}"
  availability_zone           = "${var.availability_zone}"
  tenancy                     = "${var.tenancy}"
  ebs_optimized               = "${var.ebs_optimized}"
  disable_api_termination     = "${var.disable_api_termination}"
  vpc_security_group_ids      = ["${var.vpc_security_group_ids}"]
  subnet_id                   = "${var.subnet_id}"
  associate_public_ip_address = "${var.associate_public_ip_address}"
  tags                        = "${var.tags}"
  user_data                   = "${var.user_data}"
  key_name                    = "${var.key_name}"

  root_block_device {
    volume_type           = "${var.volume_type}"
    volume_size           = "${var.volume_size}"
    delete_on_termination = true
  }
}
