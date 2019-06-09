resource "random_string" "username" {
  length = 8
  special = false
}

resource "random_string" "password" {
  length = 24
  special = true
}

resource "azurerm_sql_server" "sql-server" {
  name                         = "${azurerm_resource_group.sql-shared-rg.name}"
  resource_group_name          = "${azurerm_resource_group.sql-shared-rg.name}"
  location                     = "${azurerm_resource_group.sql-shared-rg.location}"
  version                      = "12.0"
  administrator_login          = "${random_string.username.result}"
  administrator_login_password = "${random_string.password.result}"

  tags = {
    environment = "dev"
  }  

}

output "sql-server-id" {
  value = "${azurerm_sql_server.sql-server.id}"
}