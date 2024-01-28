
output "client_certificate" {
  value     = azurerm_kubernetes_cluster.example.kube_config.0.client_certificate
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.example.kube_config_raw

  sensitive = true
}

output "acr_admin_username" {
  value = azurerm_container_registry.example.admin_username

  sensitive = false
}
output "acr_admin_password" {
  value = azurerm_container_registry.example.admin_password

  sensitive = true
}