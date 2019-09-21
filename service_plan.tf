###Service Plan Functions
resource "azurerm_app_service_plan" "functions_plan" {
  name                = "functions-plan-env"
  location            = "brazilsouth"
  resource_group_name = "${azurerm_resource_group.PowerPlatform.name}"
  tags= "${local.tags}"
  sku {
    tier = "Consumption"
    size = "Y1"
  }
}

###Service Plan App Services
resource "azurerm_app_service_plan" "app_services_plan" {
  name                = "webapps-plan-env"
  location            = "brazilsouth"
  resource_group_name = "${azurerm_resource_group.PowerPlatform.name}"
  tags= "${local.tags}"
  sku {
    tier = "Standard"
    size = "S1"
  }
}

