##################################################################################
# TERRAFORM CONFIG
##################################################################################
## Uncomment this block to use Terraform Cloud
# cloud {
#   organization = "organization-name"
#   workspaces {
#     name = "learn-terraform-module-use"
#   }
# }

# This Terraform configuration requires a use of Terraform version greater than v1.1.0.
# This Terraform configuration must also use the aws provider that is within the v4.18.0 minor release. 
terraform {
  required_version = ">= 1.1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.18.0"
    }
  }
}

##################################################################################
# PROVIDERS 
##################################################################################
provider "aws" {
  profile = var.profile
  region  = var.region != "" ? var.region : "us-east-2"
}
