###########################
# data output
###########################
# using the data source to get the output 
output "aws_current_region" {
  description = "output the AWS region"
  value       = data.aws_region.current
}


###########################
# VPC
###########################
# output "vpcowner-id" {
#   value = "${module.vpc.vpc_owner_id}"
# }
output "vpc-id" {
  value = module.vpc.id
}
output "vpc-arn" {
  value = module.vpc.arn
}
output "vpc-cidr_block" {
  value = module.vpc.cidr_block
}
###########################
# Subnets
###########################
# output "vpc-subnet-public-id" {
#   value = module.public_subnet.all
# }

output "vpc-subnet-public-id" {
  value = module.public_subnet.id.*
}

# output "vpc-subnet-public-id" {
#   value = module.public_subnet.all
# }

output "vpc-subnet-private-id" {
  value = module.private_subnet.id.*
}

