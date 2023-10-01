resource "azurerm_virtual_network" "RKEVNET" {
  resource_group_name = azurerm_resource_group.RKERG.name
  name = var.vnetname
  location = var.vnetlocation
  address_space = var.addressspace

  tags = {
    environment = var.environment
  }

}