resource "azurerm_resource_group" "RKE-RG" {
  name = var.rgname
  location = var.rglocation
}