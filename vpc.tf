# Terraform configuration

module "vpc" {
  source = "./modules/vpc"

  config = var.vpc_config

  tag_map = merge(var.naming_tag_map, {
    Name = "${var.naming_tag_map.project}-vpc"
  })
}

