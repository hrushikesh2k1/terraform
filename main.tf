data "azurerm_resource_group" "ex-rg" {
  name = "ex-rg"
}

module "vnet" {
    source = "./vnet"
    resource_group_name = azurerm_resource_group.ex-rg.name
    location = azurerm_resource_group.ex-rg.location
}

module "vm" {
    source = "./vm"
    resource_group_name = azurerm_resource_group.ex-rg.name
    location = azurerm_resource_group.ex-rg.location
    network_interface = module.vnet.mynic
}



