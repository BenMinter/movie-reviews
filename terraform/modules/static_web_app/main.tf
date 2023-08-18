resource "azurerm_static_site" "static_site" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku_size            = "Free"
  tags = merge(var.tags, {
    "environment" = var.environment
    "iac:flavour" = "terraform"
    "component"   = "static-web-app"
  })
}