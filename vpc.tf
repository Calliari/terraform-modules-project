# Terraform configuration

module "vpc" {
  source = "./modules/vpc"

  cidr_block  = var.vpc_cidr_block
  name = var.vpc_name

  tags = {
    Environment   = var.environment_name
  }

}
