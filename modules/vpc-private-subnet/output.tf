# output "aws_private_id" {
#   value = aws_subnet.private.*
# }

# output "aws_private_id" {
#   value = aws_subnet.private.id
# }
output "all" {
  value = aws_subnet.private.*
}

output "id" {
  value = aws_subnet.private.*.id
}

output "arn" {
  value = aws_subnet.private.*.arn
}