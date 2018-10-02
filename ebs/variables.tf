variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = "map"
}

variable "size" {
  description = "size of ebs volume"
}

variable "availability_zone" {
  description = "AZ where volume is located, must be the same as the ec2"
}

variable "type" {
  description = "type of volume: gp2 io1 st1"
  default     = "gp2"
}

variable "kms_key_id" {
  description = "encryption key"
  default = ""
}

variable "snapshot_id" {
  description = "If creating volume from a snapshot"
  default     = ""
}

variable "count" {
  description = "Number of ebs volumes"
  default = 1
}