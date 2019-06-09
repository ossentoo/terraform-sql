# terraform {
#   backend "azurerm" {
#     storage_account_name  = "terraformapplicationdev"
#     container_name        = "terraform"
#     key                   = "terraform.tfstate"
#   }
# }

# export ARM_ACCESS_KEY=$(az keyvault secret show --name terraform-backend-key --vault-name terraformapplicationdev --query value -o tsv)

module "application-dev"{
    source = "../environments/dev/databases"
    application = "application"
    environment = "dev"
    sqlserver = "dev"
}

module "application-uat"{
    source = "../environments/dev/databases"
    application = "application"
    environment = "dev"
    sqlserver = "dev"
}

module "application-prd"{
    source = "../environments/prd/databases"
    application = "application"
    environment = "prd"
    sqlserver = "prd"
}