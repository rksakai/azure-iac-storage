provider "azurerm" {
  features {}
  subscription_id      = "58629e9c-adb4-4830-a6db-f026096730fa"
  tenant_id            = "8f383ce2-97da-44f5-aee2-11e166311c59"

}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "East US"
}

resource "azurerm_storage_account" "example" {
  name                     = "stlivefiap" # O nome deve ser único
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier            = "Standard"
  account_replication_type = "LRS"
}