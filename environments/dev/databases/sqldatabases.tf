module "shared-dev"{
    source = "./servers"
    environment = "${var.environment}"
}

resource "azurerm_sql_database" "sql-database" {
  name                             = "${var.application}-${var.environment}"
  resource_group_name              = "${azurerm_resource_group.sql-shared-rg.name}"
  location                         = "${azurerm_resource_group.sql-shared-rg.location}"
  server_name                      = "${azurerm_resource_group.sql-shared-rg.name}"
  edition                          = "Basic"
  collation                        = "SQL_Latin1_General_CP1_CI_AS"
  create_mode                      = "Default"
  requested_service_objective_name = "Basic"
  depends_on = ["module.shared-dev"]
}

# sql-server-id