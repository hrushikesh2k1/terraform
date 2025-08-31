# role assignment is a generic resource that can be applied to any other resource or scope within in azure
# role assignment is made up of three pieces of data
# principal_id = who has access to what-- this is the pointer to an identity that can be a user or machine
# role_definition_name = type of permission that is to be granted
# scope = to which resources (it may be Individual resource, a resource group, a subscription or a management group)

resource

resource "azurerm_role_assignment" "example" {
  scope = data.azure
