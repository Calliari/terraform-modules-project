output "all" {
  value = aws_vpc.this.*
}
output "id" {
  description = "output the vpc id"
  value       = aws_vpc.this.id
}
output "arn" {
  description = "output the vpc arn"
  value       = aws_vpc.this.arn
}
output "cidr_block" {
  description = "output the vpc cidr_block"
  value       = aws_vpc.this.cidr_block
}