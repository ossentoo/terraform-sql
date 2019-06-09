data "azurerm_client_config" "current" {}

variable "sql-location" {
    type = "string"

    default="uksouth"

    description = "The Azure location where all resources in this example should be created"
}

variable "location" {
    type = "map"

    default={
        "name" = "southafricawest"
        "abbreviation" = "saw"
    }

    description = "The Azure location where all resources in this example should be created"
}

variable "environment" {
    description = "the current environment (dev, prod etc)"
}
