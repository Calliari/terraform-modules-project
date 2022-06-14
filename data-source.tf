##################################################################################
# DATA SOURCE
##################################################################################
# the aws_region can be output as parameter instead, however...
# Using the aws_region data source will get the AWS provider's current region no matter how it was configured.
data "aws_region" "current" {}

# Getting the list of availability zones from aws
data "aws_availability_zones" "available" {}