resource "azurerm_databricks_workspace" "this" {
  name                = "${var.project_name}-${var.environment}-dbw"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "standard"
}
