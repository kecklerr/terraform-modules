resource "aws_volume_attachment" "volume" {
  count       = "${var.count}"
  device_name = "${element(var.device_name,count.index)}"
  instance_id = "${element(var.instance_id,count.index)}"
  volume_id   = "${element(var.volume_id,count.index)}"

  force_detach = false
  skip_destroy = false
}