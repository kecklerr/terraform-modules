variable "tags" {
  description = "Default tags"
  type = "map"
  default = {
    "Name" = ""
    "environment" = ""
    "created_by" = ""
  }
}

variable "vpc_id" {
  description = "vpc id"
}

variable "region" {
  description = "region for instances"
  default = "us-east-1"
}

variable "vpc_security_group_ids" {
  description = "vpc security group id for ec2"
}

variable "ec2_count" {
  description = "number of ec2 to create"
  default = 1
}

variable "key_name" {
  description = "Key for ssh access"
  default = ""
}

variable "ebs-1_create" {
  description = "Do we have a ebs volume 1? 0 = no ebs volume  1 = create ebs volume"
  default = 0
}

variable "ebs-1_size" {
  description = "size of ebs-1 in GB"
  default = 1
}

variable "ebs-1_device_name" {
  description = "ebs-1 device name /dev/xvdd /dev/xvdf"
  type = "list"
}