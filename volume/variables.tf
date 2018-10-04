variable "device_name" {
  description = "device name to use for ebs volume you are attaching:  /dev/xvdb /dev/xvdc"
}

variable "instance_id" {
  description = "instance id to attach volume to"
  type = "list"
}

variable "volume_id" {
  description = "ebs volume id to attach"
  type = "list"
}

variable "count" {
  description = "number of ebs volumes to attach"
  default = 1
}