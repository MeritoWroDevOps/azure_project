output "storage_id" {
  value = azurerm_storage_container.example.id
}

output "resource_group_name" {
  value = azurerm_resource_group.example.name
}
output "storage_account_name" {
  value = azurerm_storage_account.example.name
}
output "container_name" {
  value = azurerm_storage_container.example.name
}