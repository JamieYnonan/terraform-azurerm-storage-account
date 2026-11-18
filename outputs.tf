output "storage_account_name" {
  value       = azurerm_storage_account.this.name
  description = "The name of the storage account"
}

output "storage_account_id" {
  value       = azurerm_storage_account.this.id
  description = "The ID of the storage account"
}

output "container_name" {
  value       = azurerm_storage_container.this.name
  description = "The name of the storage container"
}

output "container_id" {
  value       = azurerm_storage_container.this.id
  description = "The ID of the storage container"
}

output "primary_blob_endpoint" {
  value       = azurerm_storage_account.this.primary_blob_endpoint
  description = "The primary blob endpoint of the storage account"
}
