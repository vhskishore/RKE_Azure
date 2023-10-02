resource "azurerm_linux_virtual_machine" "RKEVM-Worker" {
  resource_group_name = azurerm_resource_group.RKERG.name
  count = 3
  name = "RKE-Worker-${count.index}"
  location = var.vnetlocation
  network_interface_ids = [azurerm_network_interface.RKEWNI[count.index].id]
  #vm_size = var.vmsize
  size = var.vmsize
  admin_username = "adminuser"

  admin_ssh_key {
    username = "adminuser"
    public_key = tls_private_key.RKEkey.public_key_openssh
  }

  os_disk {
    caching           = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts"
    version   = "latest"
  }

  #custom_data = base64decode(data.template_file.rkevmcloud.rendered)
  custom_data = filebase64("scripts/rke.sh")

  tags = {
    environment = var.environment
    Name = "RKE-Worker-${count.index}"
  }

  depends_on = [ 
        azurerm_network_interface.RKENI,
        tls_private_key.RKEkey
   ]

}

# # Data template Bash bootstrapping file
# data "template_file" "rkevmcloud" {
#   template = file("rke.sh")
# }