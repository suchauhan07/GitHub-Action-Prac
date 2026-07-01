terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.76.0"
    }
  }
}

provider "azurerm" {
  features = {}
}

resource "azurerm_resource_group" "suman-rg" {
  name = "Chauhan-RG"
  location = "Central India"
}

resource "azurerm_storage_account" "suman-st" {
  name = "sumanst"
  resource_group_name = azurerm_resource_group.suman-rg.name
  location = azurerm_resource_group.suman-rg.location 
  account_tier = "Standard"
  account_replication_type = "LRS"
}
