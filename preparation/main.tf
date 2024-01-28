resource "azurerm_resource_group" "example" {
  name     = "${var.name}-resources"
  location =  var.location
}

resource "azurerm_storage_account" "example" {
  name                     = "${var.name}storacc"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "example" {
  name                  = "${var.name}content"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}



data "azuread_client_config" "current" {}

resource "azuread_application" "example" {
  display_name = "${var.name}-sp"
  owners       = [data.azuread_client_config.current.object_id]
}

resource "azuread_service_principal" "example" {
  client_id                    = azuread_application.example.client_id
  app_role_assignment_required = false
  owners                       = [data.azuread_client_config.current.object_id]
}