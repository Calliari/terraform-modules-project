###########################
# VPC
###########################
# output "vpcowner-id" {
#   value = "${module.vpc.vpc_owner_id}"
# }
output "vpc-id" {
  value = "${module.vpc.vpc_id}"
}
output "vpc-arn" {
  value = "${module.vpc.vpc_arn}"
}
output "vpc-cidr_block" {
  value = "${module.vpc.vpc_cidr_block}"
}