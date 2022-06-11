resource "aws_vpc" "this" {
  cidr_block                       = var.config.cidr_block
  enable_dns_hostnames             = var.config.enable_dns_hostnames
  assign_generated_ipv6_cidr_block = var.config.assign_generated_ipv6_cidr_block
  tags                             = var.tag_map
}