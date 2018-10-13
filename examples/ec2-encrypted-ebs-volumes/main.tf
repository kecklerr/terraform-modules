provider "aws" {
  region = "${var.region}"
}

module "ami" {
  source = "../../ami"
  region = "${var.region}"
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
