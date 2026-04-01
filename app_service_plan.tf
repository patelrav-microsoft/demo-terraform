resource "azurerm_app_service_plan" "example" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  kind                = var.app_service_plan_kind
  sku {
    tier = var.app_service_plan_sku
    size = var.app_service_plan_sku
  }
  tags = var.tags
}