# Enter the below commands to run the code

# Prod environment with Primary location
terraform init

terraform plan --var-file=./env/prod.tfvars --var-file=./location/pri_location.tfvars

terraform apply --var-file=./env/prod.tfvars --var-file=./location/pri_location.tfvars

# Dev environment with Secondary location
terraform init

terraform plan --var-file=./env/dev.tfvars --var-file=./location/sec_location.tfvars

terraform apply --var-file=./env/dev.tfvars --var-file=./location/sec_location.tfvars

# Same for deploying any number of resources.
