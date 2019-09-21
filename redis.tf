
resource "azurerm_redis_cache" "powerplatform-crm-redis-env" {
  name                = "powerplatform-crm-redis-env"
  location            = "BrazilSouth"  
  resource_group_name = "${azurerm_resource_group.PowerPlatform.name}"
  capacity            = 2
  family              = "C"
  sku_name            = "Standard"
  tags                = "${local.tags}"
}