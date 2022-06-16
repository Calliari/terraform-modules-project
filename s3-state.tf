##################################################################################
# IAM 
##################################################################################
resource "aws_s3_bucket" "state_bucket" {
  bucket        = var.s3_bucket_prefix_name
  acl           = "private"
  force_destroy = true

  versioning {
    enabled = true
  }

}
