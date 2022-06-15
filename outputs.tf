# Output variable definitions
output "all" {
  description = "ARN of the bucket"
  value       = aws_s3_bucket.this.*
}

