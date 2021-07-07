# Create a Storage Account
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account
# https://www.terraform.io/docs/language/data-sources/index.html

resource "azurerm_resource_group" "example" {
  name     = "padawans-resources"
  location = "West Europe"
}

resource "azurerm_storage_account" "tystorage" {
  name                     = "tyrese${random_integer.suffix.result}"
  resource_group_name      = data.azurerm_resource_group.padawans.name
  location                 = data.azurerm_resource_group.padawans.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}