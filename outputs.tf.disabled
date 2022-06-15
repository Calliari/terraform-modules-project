# Output variable definitions
output "all" {
  description = "ARN of the bucket"
  value       = aws_s3_bucket.this.*
}

output "arn" {
  description = "ARN of the bucket"
  value       = aws_s3_bucket.this.arn
}

output "name" {
  description = "Name (id) of the bucket"
  value       = aws_s3_bucket.this.id
}

output "domain" {
  description = "Domain name of the bucket"
  value       = aws_s3_bucket_website_configuration.this.website_domain
}

output "endpoint" {
  description = "Name (endpoint) of the bucket"
  value       = aws_s3_bucket_website_configuration.this.website_endpoint
}
