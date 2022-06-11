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