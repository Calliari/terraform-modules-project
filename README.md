Creating the s3 bucket and dynamodb table for "terraform remote state and lock table mitigating simultaneously deployments"

This branch is for loading the configurationn from another project (s3 remote state) - where we need to get the vpc state metadata from

Create a file where with the variables where the S3-bucket terraform state is sitting:
```
cat > terraform.tfvars << EOF
profile                = "AWS_ACC_PROFILE_NAME"
network_state_bucket   = "s3-tf-state-UNIQUE_NAME"
EOF
```

Pass the profile as a environment variable to be used by terraform
```
# Linux
export AWS_PROFILE=infra

# Windows
$env:AWS_PROFILE="infra"
```

Start with terraform commands 
```
terraform init

terraform validate

terraform plan -out state.tfplan

terraform apply state.tfplan
```

Testing if the data is available typing `terraform console`:
```
# to get all the metadata
data.terraform_remote_state.network

# to get the vpc-id
data.terraform_remote_state.network.outputs.vpc-id
```