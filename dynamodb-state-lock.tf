resource "aws_dynamodb_table" "terraform_statelock" {
  name           = var.dynamodb_table_name
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  # tags = {
  #   Name    = var.account_name
  #   Account = "${var.account_name} dynamodb for terraform"
  # }

}

## create item in the dynamodb table for testing
# resource "aws_dynamodb_table_item" "dynamodb_item" {
#   table_name = aws_dynamodb_table.terraform_statelock.name
#   hash_key   = aws_dynamodb_table.terraform_statelock.hash_key
#   item       = <<ITEM
# {
#   "LockID": {"S": "terraform-state/statelock/terraform.tfstate-md5"},
#   "Digest": {"S": "123123"}
# }
# ITEM

# }


