resource "aws_kms_key" "kms_key" {
  deletion_window_in_days = "${var.deletion_window}"
  tags = "${var.tags}"
}