resource "azurerm_resource_group" "main" {
  name = "rg-${var.application_name}-${var.environment_name}"
  location = var.primary_location
}

resource "random_string" "keyvault_suffix" {
  length = 6
  upper = false
  special = false
}

resource "azurerm_key_vault" "main" {
  name = "kv-${var.application_name}-${var.environment_name}-${random_string.keyvault_suffix.result}"   # name should be globally unique
  location = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  tenant_id = ""
  sku_name = "standard"
}
