resource "aws_ebs_volume" "ebs" {
  count             = "${var.count}"
  availability_zone = "${var.availability_zone}"
  size              = "${var.size}"
  tags              = "${var.tags}"
  encrypted         = "true"
  type              = "${var.type}"
  snapshot_id       = "${var.snapshot_id}"
}
