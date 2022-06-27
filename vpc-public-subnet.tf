module "public_subnet" {
  #source = "git::https://github.com/nitinda/terraform-module-aws-vpc-subnet.git?ref=master"
  source = "./modules/vpc-public-subnet"

  vpc_id                  = module.vpc.id
  vpc_cidr_block          = module.vpc.cidr_block
  vpc_subnet_public_count = var.vpc_number_of_subnets.public

  tag_map = merge(var.naming_tag_map, {
    Name                = "${var.naming_tag_map.project}-public-subnet"
    terraform-workspace = "${terraform.workspace}"
  })

}


# merge(var.naming_tag_map, { Name = "${var.naming_tag_map.project}-public-subnet"})
# (cidrsubnet("${module.vpc.cidr_block}", 8, [count.index]))

#  availability_zone               = var.availability_zone
#  availability_zone_id            = var.availability_zone_id
#  ipv6_cidr_block                 = var.ipv6_cidr_block
#  map_public_ip_on_launch         = var.map_public_ip_on_launch
#  assign_ipv6_address_on_creation = var.assign_ipv6_address_on_creation
#  vpc_id                          = var.vpc_id
#  tags                            = var.tags


