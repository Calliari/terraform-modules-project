
variable "config" {
  type        = map(string)
  description = "The CIDR block for the VPC."
  default     = {}
}

variable "tag_map" {
  type        = map(string)
  description = "Map of tags to be applied to all resources"
  default     = {}
}