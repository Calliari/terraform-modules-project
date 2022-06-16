##################################################################################
# PROVIDERS with authentication method
##################################################################################
# Variables taken from "terraform.tfvars" file
provider "aws" {
  profile = var.profile
  region  = var.region != "" ? var.region : "us-east-2"
}

