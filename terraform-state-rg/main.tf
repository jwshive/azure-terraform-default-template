resource "azurerm_resource_group" "tf-state-resource-group" {
  location = var.resource-location
  name     = local.tf-resource-group-name
  tags     = merge(local.common-tags)
}