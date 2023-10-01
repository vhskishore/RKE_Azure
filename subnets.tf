resource "azurerm_subnet" "RKEPUBSN" {
    name = var.pubsubnetname
    resource_group_name = azurerm_resource_group.RKERG.name
    virtual_network_name = azurerm_virtual_network.RKEVNET.name
    address_prefixes = var.pubsubnetaddr
    depends_on = [ azurerm_virtual_network.RKEVNET ]
}