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

For debug and logging enable the verbose trace "run the below command", good to understand how terraform communicates with the APIs
```
export TF_LOG=TRACE   #enable
export TF_LOG=       #disable

printenv TF_LOG  # check if the env variable is set or not
```

Before fire it up and create the resources with the terrafom code, run some checks:
```
terraform fmt -check -recursive   # check what would be "Reformat"
terraform fmt -diff -recursive    # check the difference 
terraform validate                # validate the code and erros 
terraform init                    # initialise terraform 
```
