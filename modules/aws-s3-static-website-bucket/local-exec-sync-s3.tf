resource "null_resource" "cmd_cp_to_s3" {
  provisioner "local-exec" {
    command = "aws s3 --profile ${var.aws_profile} cp modules/aws-s3-static-website-bucket/www/ s3://${aws_s3_bucket.this.id}/ --recursive"
  }
}