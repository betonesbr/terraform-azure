
resource "azurerm_servicebus_namespace" "crm-servicebus" {
  name                = "crm-servicebus-env"
  location            = "${var.buslocation}"
  resource_group_name = "${azurerm_resource_group.PowerPlatform.name}"
  sku                 = "Basic"
  tags = "${local.tags}"
}