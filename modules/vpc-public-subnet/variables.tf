variable "vpc_id" {
  description = "The VPC ID"
}

variable "tag_map" {
  type        = map(string)
  description = "Map of tags to be applied to all resources"
  default     = {}
}
variable "availability_zone" {
  description = "The AZ for the subnet"
  default     = null
}

variable "availability_zone_id" {
  description = "The AZ ID of the subnet"
  default     = null
}

variable "vpc_cidr_block" {
  description = "The CIDR block for public_subnet on this vpc"
  # type    = list(string)  # Terraform v1.1.1 write list(string) instead to explicitly indicate that the list elements are strings.
  # default = []
}

variable "ipv6_cidr_block" {
  description = "The IPv6 network range for the subnet, in CIDR notation"
  default     = null
}

variable "map_public_ip_on_launch" {
  description = "Specify true to indicate that instances launched into the subnet should be assigned a public IP address"
  default     = true
  type        = bool
}

variable "assign_ipv6_address_on_creation" {
  description = "Specify true to indicate that network interfaces created in the specified subnet should be assigned an IPv6 address"
  default     = false
  type        = bool
}

