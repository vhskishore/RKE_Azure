terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.75.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "124947ad-89ee-4480-ae10-31dc575348d2"
  client_id = "e27fdba7-5466-4361-be49-d15cc1f5feb6"
  client_secret = "33l8Q~p_vkWyctW14WTcmxXwWdMba0GPyGuQTaSo"
  tenant_id = "d560ccf6-d51e-41aa-aa59-23245f28e3a4"
}