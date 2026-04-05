output "static_web_app_url" {
  description = "The default URL of the Static Web App."
  value       = azurerm_static_web_app.main.default_host_name
}

output "app_service_url" {
  description = "The default hostname of the App Service."
  value       = azurerm_linux_web_app.main.default_hostname
}

output "resource_group_id" {
  description = "The ID of the resource group."
  value       = azurerm_resource_group.main.id
}

output "acr_login_server" {
  description = "The login server for the Azure Container Registry."
  value       = azurerm_container_registry.acr.login_server
}

output "acr_admin_username" {
  description = "The admin username for the Azure Container Registry."
  value       = azurerm_container_registry.acr.admin_username
  sensitive   = true
}

output "acr_admin_password" {
  description = "The admin password for the Azure Container Registry."
  value       = azurerm_container_registry.acr.admin_password
  sensitive   = true
}
