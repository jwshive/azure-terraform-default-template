This will setup the terraform resource group for a new terraform project.
Make sure you have setup your variables file for the main project.
This will always be a local state as it does not change after initial creation in most instances.

Steps to Run:
    cd terraform-state-rg
    terraform init
    terraform plan -var application-name="appname" -var environment="env" -var product-owner="name" -var project-name="project"
    terraform apply -auto-approve -var application-name="appname" -var environment="env" -var product-owner="name" -var project-name="project"