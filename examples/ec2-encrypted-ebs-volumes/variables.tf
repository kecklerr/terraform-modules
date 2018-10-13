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

