resource "azurerm_resource_group" "sql-shared-rg" {
    name = "sql-shared-${var.environment}"
    location = "${var.sql-location}"
}
