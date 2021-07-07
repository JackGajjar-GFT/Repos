# Create a Storage Account
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account
# https://www.terraform.io/docs/language/data-sources/index.html

resource "random_integer" "priority" {
  min = 1
  max = 50000
}

resource "azurerm_storage_account" "lana_storage_account" {
  name                     = "lana${random_integer.priority.result}"
  resource_group_name      = data.azurerm_resource_group.padawans.name
  location                 = data.azurerm_resource_group.padawans.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "container" {
  name                  = "content"
  storage_account_name  = "lana${random_integer.priority.result}"
  container_access_type = "private"
}

resource "azurerm_storage_blob" "blob" {
  name                   = "hello.txt"
  storage_account_name   = "lana${random_integer.priority.result}"
  storage_container_name = "lanacontainer${random_integer.priority.result}"
  type                   = "Block"
  source                 = "hello.txt"
}