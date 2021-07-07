# Retrieve existing Resource Group
data "azurerm_resource_group" "padawans" {
  name = "gft-rg-padawans"
}