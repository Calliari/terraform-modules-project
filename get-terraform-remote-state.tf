##################################################################################
# Data sources
##################################################################################
# loading the configurationn from another project (s3 remote state) - where we need to get the vpc state metadata from
data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = var.network_state_bucket
    key    = var.network_state_key
    region = var.network_state_region
  }
}
