variable count {
  description = "Number of ec2"
  default = 1
}

variable "ami_id" {
  description = "ID of AMI to use for the instance"
}

variable "tenancy" {
  description = "The tenancy of the instance (if the instance is running in a VPC). Available values: default, dedicated, host."
  default     = "default"
}

variable "volume_type" {
  description = "volume type on root partition default - gp2"
  default     = "gp2"
}

variable "volume_size" {
  description = "size of root volume"
  default     = 10
}

variable "ebs_optimized" {
  description = "If true, the launched EC2 instance will be EBS-optimized"
  default     = false
}

variable "disable_api_termination" {
  description = "If true, enables EC2 Instance Termination Protection"
  default     = false
}

variable "instance_type" {
  description = "The type of instance to start"
  default     = "t2.micro"
}

variable "vpc_security_group_ids" {
  description = "A list of security group IDs to associate with"
  type        = "list"
}

variable "vpc_id" {
  description = "vpc id where the ec2s will be created"
}

variable "associate_public_ip_address" {
  description = "If true, the EC2 instance will have associated public IP address"
  default     = false
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = "map"
  default     = {}
}

variable "user_data" {
  description = "User data passed to instance to configure"
  default     = ""
}

variable "key_name" {
  description = "ssh key name"
  default     = ""
}
