variable "profile" {
  description = "AWS profile name to use from the aws configure command '~/.aws/config'"
  type        = string
  default     = ""
}

variable "region" {
  description = "Location of the region"
  type        = string
  default     = ""
}

variable "vpc_cidr_block" {
  description = "The vpc cidr block"
  type        = string
  default     = ""
}

variable "vpc_name" {
  description = "The vpc name"
  type        = string
  default     = "vpc-test"
}

variable "environment_name" {
  description = "The env-name for this env"
  type        = string
  default     = "my-vpc-dev"
}



