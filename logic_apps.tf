
resource "azurerm_logic_app_workflow" "crm-logicapps-redis-hml" {
  name                = "crm-logicapps-redis-hml"
  location            = "Brazil South"
  resource_group_name = "${azurerm_resource_group.PowerPlatform.name}"
  tags= "${local.tags}"
}
resource "azurerm_logic_app_workflow" "crm-logicapps-salesorder-hml" {
  name                = "crm-logicapps-salesorder-hml"
  location            = "Brazil South"
  resource_group_name = "${azurerm_resource_group.PowerPlatform.name}"
  tags= "${local.tags}"
}
resource "azurerm_logic_app_workflow" "crm-logicapps-salesorderdetails-hml" {
  name                = "crm-logicapps-salesorderdetails-hml"
  location            = "Brazil South"
  resource_group_name = "${azurerm_resource_group.PowerPlatform.name}"
  tags= "${local.tags}"
}
resource "azurerm_logic_app_workflow" "crm-logicapps-product" {
  name                = "crm-logicapps-product-hml"
  location            = "Brazil South"
  resource_group_name = "${azurerm_resource_group.PowerPlatform.name}"
  tags= "${local.tags}"
}
resource "azurerm_logic_app_workflow" "crm-logicapps-entitycreate-hml" {
  name                = "crm-logicapps-entitycreate-hml"
  location            = "Brazil South"
  resource_group_name = "${azurerm_resource_group.PowerPlatform.name}"
  tags= "${local.tags}"
}