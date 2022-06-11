output "vpc_id" {
  description = "output the vpc id"
  value = aws_vpc.this.id
} 

output "vpc_arn" {
  description = "output the vpc arn"
  value = aws_vpc.this.arn
} 

output "vpc_cidr_block" {
  description = "output the vpc cidr_block"
  value = aws_vpc.this.cidr_block
}