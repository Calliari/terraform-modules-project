##################################################################################
# S3 for terraform remote state backend
##################################################################################
resource "aws_s3_bucket" "state_bucket" {
  bucket        = var.s3_bucket_prefix_name
  acl           = "private"
  force_destroy = true
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
  object_lock_configuration {
    object_lock_enabled = "Enabled"
  }
}
