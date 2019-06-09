data "azurerm_client_config" "current" {}

variable "sql-location" {
    type = "string"

    default="uksouth"

    description = "The Azure location where all resources in this example should be created"
}

variable "environment" {
    description = "the current environment (dev, prod etc)"
}

variable "sqlserver" {
    description = "the database server that will be used for a database"
}
variable "application" {
    description = "the application name"
}
