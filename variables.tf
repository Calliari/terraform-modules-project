variable "profile" {
  description = "AWS profile name to use from the aws configure command '~/.aws/config'"
  type        = string
  default     = ""
  sensitive   = true
}

variable "region" {
  description = "Location of the region"
  type        = string
  default     = ""
}

variable "naming_tag_map" {
  description = "Naming prefix for resources using tags"
  type = object(
    {
      terraform   = bool
      environment = string
      company     = string
      project     = string
    }
  )
  default = (
    {
      terraform   = true
      environment = "dev"
      company     = "company-abc"
      project     = "learning-module"

    }
  )
}

variable "vpc_config" {
  description = "cidr_block, enable_dns_hostnames, assign_generated_ipv6_cidr_block"
  type = object(
    {
      cidr_block                       = string
      enable_dns_hostnames             = bool
      assign_generated_ipv6_cidr_block = bool
    }
  )
  default = (
    {
      cidr_block                       = "172.20.0.0/16"
      enable_dns_hostnames             = true
      assign_generated_ipv6_cidr_block = false
    }
  )
}



