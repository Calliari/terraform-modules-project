variable "profile" {
  description = "AWS profile name to use from the aws configure command '~/.aws/config'"
  type        = string
  default     = ""
  sensitive   = true
}

variable "region" {
  type    = string
  default = "us-east-2"
}

variable "network_state_bucket" {
  type        = string
  description = "name of bucket used for network state - where we need to get the vpc state metadata from"
}

variable "network_state_key" {
  type        = string
  description = "name of key used for network state - where we need to get the vpc state metadata from"
  default     = "project/dev/terraform.tfstate"
}

variable "network_state_region" {
  type        = string
  description = "region used for network state - where we need to get the vpc state metadata from"
  default     = "us-east-2"
}