resource "azurerm_service_plan" "example" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  os_type             = var.app_service_plan_os_type
  sku_name            = var.app_service_plan_sku
  tags                = var.tags
}