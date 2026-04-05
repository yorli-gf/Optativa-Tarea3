resource "azurerm_static_web_app" "main" {
  name                = var.static_web_app_name
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  sku_tier            = "Free" # Free tier is common for static web apps
  sku_size            = "Free"
  tags                = var.tags
}
