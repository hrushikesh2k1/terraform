# role assignment is a generic resource that can be applied to any other resource or scope within in azure
# role assignment is made up of three pieces of data
# principal_id = who has access to what-- this is the pointer to an identity that can be a user or machine
# role_definition_name = type of permission that is to be granted
# scope = to which resources (it may be Individual resource, a resource group, a subscription or a management group)


data "azurerm_client_config" "current" {
}

resource "azurerm_key_valut" "main" {
  name = ""
  location = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  tenant_id = data.azurerm_client_config.current.tenant_id
  sku_name = "standard"
}

# you are assigning yourself with Key Vault Admin role
resource "azurerm_role_assignment" "terraform_user" {
  scope = azurerm_key_vault.main.id
  role_definition_name = "Key Vault Administrator"
  principal_id = data.azurerm_client_config.current.object_id
}

# The catch is the architecture is azure key vault is originally intented to work with its own access policy. so, role assignment what we have decalred does not work.
# To enable azure RBAC we mention enable_rbac_authorization = true inside the block of key vault resource


