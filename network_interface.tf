resource "azurerm_network_interface" "RKENI" {
  count = 3
  #name = var.networkinterface
  name = "RKENI-${count.index}"
  location = var.niclocation
  resource_group_name = azurerm_resource_group.RKERG.name
  ip_configuration {
    name = var.nicipconfigname
    subnet_id = azurerm_subnet.RKEPUBSN.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.RKEPIP[count.index].id
  }

  depends_on = [ 
    #azurerm_public_ip.RKEPIP,
    azurerm_virtual_network.RKEVNET
     ]
}

#Worker Node Network Interfaces

resource "azurerm_network_interface" "RKEWNI" {
  count = 3
  #name = var.networkinterface
  name = "RKENI-Worker-${count.index}"
  location = var.niclocation
  resource_group_name = azurerm_resource_group.RKERG.name
  ip_configuration {
    name = var.nicipconfigname
    subnet_id = azurerm_subnet.RKEPUBSN.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.RKEPIP-Worker[count.index].id
  }

  depends_on = [ 
    #azurerm_public_ip.RKEPIP,
    azurerm_virtual_network.RKEVNET
     ]
}