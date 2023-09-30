resource "azurerm_virtual_network" "RKE-VNET" {
  resource_group_name = azurerm_resource_group.RKE-RG.id
  name = var.vnetname
  location = var.vnetlocation
  address_space = var.address_space
  subnet {
    name = var.pubsubnetname
    address_prefix = var.pubsubnetaddr
  }

  subnet {
    name = var.prisubnet
    address_prefix = var.prisubnetaddr
  }

  tags = {
    environment = var.environment
  }

}