# By using this client config local, we can have access to "client_id", "object_id", "subscription_id", "tenant_id"
# So by this way, like in creating the azure key vault we can replace tenant_id with this rather than hardcoding the value

#example
=================================================================
data "azurerm_client_config" "current" {
}

resource "azurerm_key_valut" "main" {
  name = ""
  location = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  tenant_id = data.azurerm_client_config.current.tenant_id
  sku_name = "standard"
}
====================================================================
