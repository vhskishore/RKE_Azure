resource "azurerm_public_ip" "RKEPIP" {
  count = 3
  name = "${var.pipname}-${count.index}"
  location = var.vnetlocation
  resource_group_name = azurerm_resource_group.RKERG.name
  allocation_method = "Static"
  depends_on = [ 
    azurerm_resource_group.RKERG 
    ]
}