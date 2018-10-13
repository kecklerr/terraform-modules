data "aws_subnet_ids" "subnet_ids" {
  vpc_id = "${var.vpc_id}"
}


resource "random_shuffle" "subnet_id" {
  input = ["${data.aws_subnet_ids.subnet_ids.ids}"]
}


resource "aws_instance" "ec2" {
  count                       = "${var.count}"
  ami                         = "${var.ami_id}"
  instance_type               = "${var.instance_type}"
  tenancy                     = "${var.tenancy}"
  ebs_optimized               = "${var.ebs_optimized}"
  disable_api_termination     = "${var.disable_api_termination}"
  vpc_security_group_ids      = ["${var.vpc_security_group_ids}"]
  subnet_id                   = "${element(random_shuffle.subnet_id.result,count.index )}"
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
