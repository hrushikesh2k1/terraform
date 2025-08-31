# set the subscription
export ARM_SUBSCRIPTION_ID = ""

# set the application / environment
export TF_VAR_application_name = "app1"
export TF_VAR_environment_name = "prod"

# run terraform 
terraform init \ 
    -backend-config="resource_group_name=rg-terraform-statefiles"
    -backend-config="storage_account_name=stabcd123"
    -backend-config="container_name=ctabcd123"
    -backend-config="key=app1_prod"

terraform $*
    
