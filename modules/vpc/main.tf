resource "aws_vpc" "main" {
  cidr_block                       = var.cidr_block
  enable_dns_hostnames             = true
  assign_generated_ipv6_cidr_block = false
  # tags                             = "${merge(var.tags, map("Name", format("%s", var.env_name)))}"
  tags                             = "${merge(var.tags, tomap({ Name = "${var.name}" }))}"

}


