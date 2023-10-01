output "pip" {
  value = azurerm_public_ip.RKEPIP.*.ip_address
}