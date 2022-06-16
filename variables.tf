##################################################################################
# VARIABLES
##################################################################################
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

#Bucket variables
variable "s3_bucket_prefix_name" {
  type    = string
  default = ""
}

variable "dynamodb_table_name" {
  type    = string
  default = ""
}

variable "full_access_users" {
  type    = list(string)
  default = ["user-test-admin"]

}

variable "read_only_users" {
  type    = list(string)
  default = ["audit-ro"]
}