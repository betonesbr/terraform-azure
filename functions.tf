
###Storage Account
resource "azurerm_storage_account" "salesorderhml" {
  name                     = "salesorderhml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "salerorder-hml" {
  name                      = "powerplatform-empresa-salesorder-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.salesorderhml.primary_connection_string}"
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "salesorderdetailshml" {
  name                     = "salesorderdetailshml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}

###Functions
resource "azurerm_function_app" "salesorderdetailshml" {
  name                      = "powerplatform-empresa-salesorderdetails-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.salesorderdetailshml.primary_connection_string}" 
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "empresaproducthml" {
  name                     = "empresaproducthml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}

###Functions
resource "azurerm_function_app" "powerplatform-empresa-product-hml" {
  name                      = "powerplatform-empresa-product-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.empresaproducthml.primary_connection_string}" 
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "productdetailshml" {
  name                     = "productdetailshml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "powerplatform-empresa-productdetails-hml" {
  name                      = "powerplatform-empresa-productdetails-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.productdetailshml.primary_connection_string}"  
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "decisionhml" {
  name                     = "decisionhml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "powerplatform-empresa-decision-hml" {
  name                      = "powerplatform-empresa-decision-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.decisionhml.primary_connection_string}"
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "salesorderextensionshml" {
  name                     = "salesorderextensionshml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "powerplatform-empresa-salesorderextensions-hml"{
  name                      = "powerplatform-empresa-salesorderextensions-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.salesorderextensionshml.primary_connection_string}"
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "invoicehml"{
  name                     = "invoicehml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "powerplatform-empresa-invoice-hml"{
  name                      = "powerplatform-empresa-invoice-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.invoicehml.primary_connection_string}"
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "productextensionshml"{
  name                     = "productextensionshml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "powerplatform-empresa-productextensions-hml"{
  name                      = "powerplatform-empresa-productextensions-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.productextensionshml.primary_connection_string}"
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "empresamatrixhml"{
  name                     = "empresamatrixhml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "powerplatform-empresa-matrix-hml"{
  name                      = "powerplatform-empresa-matrix-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.empresamatrixhml.primary_connection_string}"
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "customerhml"{
  name                     = "customerhml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "powerplatform-empresa-customer-hml"{
  name                      = "powerplatform-empresa-customer-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.customerhml.primary_connection_string}"
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "trackinghml"{
  name                     = "trackinghml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "powerplatform-empresa-tracking-hml"{
  name                      = "powerplatform-empresa-tracking-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.trackinghml.primary_connection_string}"
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "credithml"{
  name                     = "credithml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "powerplatform-empresa-credit-hml"{
  name                      = "powerplatform-empresa-credit-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.credithml.primary_connection_string}"
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "cyclehml"{
  name                     = "cyclehml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "powerplatform-empresa-cycle-hml"{
  name                      = "powerplatform-empresa-cycle-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.cyclehml.primary_connection_string}"
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "dynamicscrmhml"{
  name                     = "dynamicscrmhml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "powerplatform-empresa-dynamicscrm-hml"{
  name                      = "powerplatform-empresa-dynamicscrm-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.dynamicscrmhml.primary_connection_string}"
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "interactionredishml"{
  name                     = "interactionredishml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "powerplatform-empresa-interactionredis-hml"{
  name                      = "powerplatform-empresa-interactionredis-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.interactionredishml.primary_connection_string}"
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "trackingextensionshml"{
  name                     = "trackingextensionshml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "powerplatform-empresa-trackingextensions-hml"{
  name                      = "powerplatform-empresa-trackingextensions-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.trackingextensionshml.primary_connection_string}"
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "productavailablehml"{
  name                     = "productavailablehml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "powerplatform-empresa-productavailable-hml"{
  name                      = "powerplatform-empresa-productavailable-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.productavailablehml.primary_connection_string}"
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "incorporationhml"{
  name                     = "incorporationhml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "powerplatform-empresa-incorporation-hml"{
  name                      = "powerplatform-empresa-incorporation-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.incorporationhml.primary_connection_string}"
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "getovsocorhml"{
  name                     = "getovsocorhml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "powerplatform-empresa-getovsocor-hml"{
  name                      = "powerplatform-empresa-getovsocor-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.getovsocorhml.primary_connection_string}"
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "ordercancelhml"{
  name                     = "ordercancelhml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "powerplatform-empresa-ordercancel-hml"{
  name                      = "powerplatform-empresa-ordercancel-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.ordercancelhml.primary_connection_string}"
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "terminateorderhml"{
  name                     = "terminateorderhml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "powerplatform-empresa-terminateorder-hml"{
  name                      = "powerplatform-empresa-terminateorder-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.terminateorderhml.primary_connection_string}"
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "scopehml"{
  name                     = "scopehml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "powerplatform-empresa-scope-hml"{
  name                      = "powerplatform-empresa-scope-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.scopehml.primary_connection_string}"
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "snacorderhml"{
  name                     = "snacorderhml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "powerplatform-empresa-snacorder-hml"{
  name                      = "powerplatform-empresa-snacorder-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.snacorderhml.primary_connection_string}"
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "paidpostagehml"{
  name                     = "paidpostagehml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "powerplatform-empresa-paidpostage-hml"{
  name                      = "powerplatform-empresa-paidpostage-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.paidpostagehml.primary_connection_string}"
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "customeraddresshml"{
  name                     = "customeraddresshml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "powerplatform-empresa-customeraddress-hml"{
  name                      = "powerplatform-empresa-customeraddress-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.customeraddresshml.primary_connection_string}"
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "reopenbillhml"{
  name                     = "reopenbillhml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "powerplatform-empresa-reopenbill-hml"{
  name                      = "powerplatform-empresa-reopenbill-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.reopenbillhml.primary_connection_string}"
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "invoiceqmhml"{
  name                     = "invoiceqmhml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "powerplatform-empresa-invoiceqm-hml"{
  name                      = "powerplatform-empresa-invoiceqm-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.invoiceqmhml.primary_connection_string}"
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "getlothml"{
  name                     = "getlothml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "powerplatform-empresa-getlot-hml"{
  name                      = "powerplatform-empresa-getlot-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.getlothml.primary_connection_string}"
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "qualitymatrixhml"{
  name                     = "qualitymatrixhml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "powerplatform-empresa-qualitymatrix-hml"{
  name                      = "powerplatform-empresa-qualitymatrix-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.qualitymatrixhml.primary_connection_string}"
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "chargeexceptionhml"{
  name                     = "chargeexceptionhml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "powerplatform-empresa-chargeexception-hml"{
  name                      = "powerplatform-empresa-chargeexception-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.chargeexceptionhml.primary_connection_string}"
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "botbovhml"{
  name                     = "botbovhml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "powerplatform-empresa-botbov-hml"{
  name                      = "powerplatform-empresa-botbov-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.botbovhml.primary_connection_string}"
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "terminatetransitionhml"{
  name                     = "terminatetransitionhml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "powerplatform-empresa-terminatetransition-hml"{
  name                      = "powerplatform-empresa-terminatetransition-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.terminatetransitionhml.primary_connection_string}"
  version = "~2"
  tags= "${local.tags}"
}
##################################################################################################

###Storage Account
resource "azurerm_storage_account" "logicappshml"{
  name                     = "logicappshml"
  resource_group_name      = "${azurerm_resource_group.PowerPlatform.name}"
  location                 = "BrazilSouth"
  account_tier             = "Standard"
  account_replication_type = "${var.account_replication_type}"
}
###Functions
resource "azurerm_function_app" "powerplatform-empresa-logicapps-hml"{
  name                      = "powerplatform-empresa-logicapps-hml"
  location                  = "BrazilSouth"
  resource_group_name       = "${azurerm_resource_group.PowerPlatform.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.functions_plan.id}"
  storage_connection_string = "${azurerm_storage_account.logicappshml.primary_connection_string}"
  version = "~2"
  tags= "${local.tags}"
}