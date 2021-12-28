resource "azurerm_resource_group" "resource-group" {
  location = var.resource-location
  name     = local.resource-group-name
  tags     = merge(local.common-tags, tomap({ "type" = "storage-account" }))
}