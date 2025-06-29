# Servidor de SQL dedicado al Data Warehouse
resource "azurerm_mssql_server" "dwserver" {
    name = "dwserver-${ var.infra }-${ var.project }-${ var.environment}"
    resource_group_name = var.resource_group_name
    location = var.location
    version = "12.0"
    administrator_login = "sqldwadmin"
    administrator_login_password = var.admin_dw_sql_password

    tags = var.tags
}

# Base de datos para analítica (Data Warehouse)
resource "azurerm_mssql_database" "dw" {
    name = "dw-${ var.infra }-${ var.project }-${ var.infra }"
    server_id = azurerm_mssql_server.dwserver.id
    sku_name = "S0"
    tags = var.tags
}

# Azure Data Factory para procesos ETL
resource "azurerm_data_factory" "df" {
  name                = "df-${ var.infra }-${var.project}-${var.environment}"
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

