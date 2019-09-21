resource "azurerm_resource_group" "PowerPlatform" {
  name     = "PowerPlatform-env"
  location = "${var.location}"
  tags= "${local.tags}"
}