# terraform-modules-project
This is infrastructure with terraform-modules

For learning and test purpose new ways for create a new env

If a file named 'terraform.tfvars' is added all the variables defined on 'variabled.tf' file will be overwiten by 'terraform.tfvars' variables
I.g:
```
profile        = "my-own-acc"
region         = "us-east-5"
vpc_cidr_block = "172.20.1.0/16"
env_name       = "my-vpc-dev"

```