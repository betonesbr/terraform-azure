
resource "azurerm_app_service" "crm-react-panels-hml" {
  name                = "crm-react-panels-hml"
  location            = "Brazil South"
  resource_group_name = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id = "${azurerm_app_service_plan.app_services_plan.id}"
  tags= "${local.tags}"
}

resource "azurerm_app_service" "crm-react-salesorder-hml" {
  name                = "crm-react-salesorder-hml"
  location            = "Brazil South"
  resource_group_name = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id = "${azurerm_app_service_plan.app_services_plan.id}"
  tags= "${local.tags}"
}

resource "azurerm_app_service" "crm-react-salesorderdetails-hml" {
  name                = "crm-react-salesorderdetails-hml"
  location            = "Brazil South"
  resource_group_name = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id = "${azurerm_app_service_plan.app_services_plan.id}"
  tags= "${local.tags}"
}

resource "azurerm_app_service" "crm-react-product-hml" {
  name                = "crm-react-product-hml"
  location            = "Brazil South"
  resource_group_name = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id = "${azurerm_app_service_plan.app_services_plan.id}"
  tags= "${local.tags}"
}

resource "azurerm_app_service" "crm-react-createproduct-hml" {
  name                = "crm-react-createproduct-hml"
  location            = "Brazil South"
  resource_group_name = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id = "${azurerm_app_service_plan.app_services_plan.id}"
  tags= "${local.tags}"
}

resource "azurerm_app_service" "crm-dynamics-panel-hml" {
  name                = "crm-dynamics-panel-hml"
  location            = "Brazil South"
  resource_group_name = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id = "${azurerm_app_service_plan.app_services_plan.id}"
  tags= "${local.tags}"
}
