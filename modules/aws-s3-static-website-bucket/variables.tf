# Input variable definitions
variable "aws_profile" {
  description = "aws profile of that can use aws s3 cmd to the bucket"
  type        = string
}

variable "bucket_name" {
  description = "Name of the s3 bucket. Must be unique."
  type        = string
}

variable "tag_map" {
  description = "Tags to set on the bucket."
  type        = map(string)
  default     = {}
}