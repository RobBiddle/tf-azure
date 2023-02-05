resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup"
  location = "eastus"
}
resource "azurerm_resource_group" "rg2" {
  name     = "myTFResourceGroup2"
  location = "eastus"
}
resource "azurerm_virtual_network" "vnet" {
  name                = "myTFVnet"
  address_space       = ["10.1.0.0/16"]
  location            = "eastus"
  resource_group_name = azurerm_resource_group.rg.name
}
resource "azurerm_virtual_network" "vnet2" {
  name                = "myTFVnet2"
  address_space       = ["10.2.0.0/16"]
  location            = "eastus"
  resource_group_name = azurerm_resource_group.rg.name
}