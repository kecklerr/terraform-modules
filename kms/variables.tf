variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = "map"
  default     = {}
}

variable "deletion_window" {
  description = "Days for deletion when deleted"
  default = 7
}