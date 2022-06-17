Creating the s3 bucket and dynamodb table for "terraform remote state and lock table mitigating simultaneously deployments"

This branch will create a S3 and dynamodb 

Create a file that hold the S3-bucket name and the dynamodb-table name:
```
cat > terraform.tfvars << EOF
profile                = "AWS_ACC_PROFILE_NAME"
region                 = "REGION_NAME"
s3_bucket_prefix_name  = "s3-tf-state-UNIQUE_NAME"
dynamodb_table_name    = "dynamodb-tf-state-lock-UNIQUE_NAME"
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