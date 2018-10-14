resource "aws_ebs_volume" "ebs" {
  count             = "${var.count}"
  availability_zone = "${element(var.availability_zone,count.index)}"
  size              = "${var.size}"
  tags              = "${var.tags}"
  encrypted         = "true"
  kms_key_id        = "${var.kms_key_id}"
  type              = "${var.type}"
  snapshot_id       = "${var.snapshot_id}"
}
