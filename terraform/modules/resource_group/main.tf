resource "azurerm_resource_group" "resource_group" {
  location = var.location
  name     = var.name
  tags = merge(var.tags, {
    "environment" = var.environment
    "iac:flavour" = "terraform"
    "component"   = "resource_group"
  })
}