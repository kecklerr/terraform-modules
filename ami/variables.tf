variable ami_name {
  description = "AMI name - can be regex"
  default     = "amzn-ami-*-x86_64-gp2"
}

variable owner_alias {
  description = "Owner of AMI by alias name.  ex: amazon, 874549388498"
  default     = "amazon"
}

variable virt_type {
  description = "Virtualization type of AMI, We always use HVM"
  default     = "hvm"
}

variable region {
  description = "Region for source ami"
}
