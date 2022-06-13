##################################################################################
# DATA
##################################################################################
# Getting the list of availability zones from aws
data "aws_availability_zones" "available" {}

#resource "aws_subnet" "subnet" {
#  availability_zone               = var.availability_zone
#  availability_zone_id            = var.availability_zone_id
#  cidr_block                      = var.cidr_block
#  ipv6_cidr_block                 = var.ipv6_cidr_block
#  map_public_ip_on_launch         = var.map_public_ip_on_launch
#  assign_ipv6_address_on_creation = var.assign_ipv6_address_on_creation
#  vpc_id                          = var.vpc_id
#  tags                            = var.tags
#}

resource "aws_subnet" "public" {
  count      = var.vpc_subnet_public_count
  vpc_id     = var.vpc_id
  cidr_block = cidrsubnet("${var.vpc_cidr_block}", 8, "${count.index}")
  availability_zone = element(data.aws_availability_zones.available.names, "${count.index}")
  tags = merge(var.tag_map, tomap({ Name = "${var.tag_map.project}-public-subnet-${count.index}" }))
  # when the "var.map_public_ip_on_launch" is empty set it to be "true" for public IPs
  map_public_ip_on_launch = var.map_public_ip_on_launch != "" ? var.map_public_ip_on_launch : true
}
