resource "azurerm_resource_group" "tf-state-resource-group" {
  location = var.resource-location
  name     = local.tf-resource-group-name
  tags     = merge(local.common-tags)
}

resource "azurerm_storage_account" "tf-state-storage-account" {
  account_replication_type = "LRS"
  account_tier             = "Standard"
  location                 = var.resource-location
  name                     = replace(local.tf-resource-group-name, "-", "")
  account_kind             = "StorageV2"
  resource_group_name      = azurerm_resource_group.tf-state-resource-group.name
}

resource "azurerm_storage_container" "tf-state-container" {
  name                 = "${var.application-name}-state"
  storage_account_name = azurerm_storage_account.tf-state-storage-account.name
}