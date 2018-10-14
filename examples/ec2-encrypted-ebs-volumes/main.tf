provider "aws" {
  region = "${var.region}"
}

module "ami" {
  source = "../../ami"
  region = "${var.region}"
  kms_key_arn = "${module.kms_key.arn}"
}

module "ec2" {
  source = "../../ec2"

  tags = "${var.tags}"
  ami_id = "${module.ami.encrypted_id}"
  count = "${var.ec2_count}"

  vpc_id = "${var.vpc_id}"
  vpc_security_group_ids = ["${var.vpc_security_group_ids}"]
  key_name = "${var.key_name}"

}

module "kms_key" {
  source = "../../kms"
}

module "ebs-1" {
  source = "../../ebs"
  count = "${var.ec2_count}"

  availability_zone = "${module.ec2.availability_zone}"
  kms_key_id = "${module.kms_key.arn}"
  size = "${var.ebs-1_size}"
  tags = "${var.tags}"
}

module "ebs-1_volume" {
  source = "../../volume"
  count = "${var.ec2_count}"

  device_name = "${var.ebs-1_device_name}"
  instance_id = "${module.ec2.id}"
  volume_id = "${module.ebs-1.id}"
}