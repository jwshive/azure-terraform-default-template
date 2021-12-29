output "tf-storage-account-properties" {
  value = azurerm_storage_account.tf-state-storage-account
  sensitive = true
}