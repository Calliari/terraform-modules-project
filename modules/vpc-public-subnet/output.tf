# output "aws_public_id" {
#   value = aws_subnet.public.*
# }

# output "aws_public_id" {
#   value = aws_subnet.public.id
# }

output "id" {
  value = aws_subnet.public.*.id
}

output "arn" {
  value = aws_subnet.public.*.arn
}