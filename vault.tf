###VAULT-KEY
resource "azurerm_key_vault" "vault-key-env" {
  name                = "crm-vault-config-env"
  location            = "BrazilSouth"
  resource_group_name = "${azurerm_resource_group.PowerPlatform.name}"
  tenant_id           = "id"
  tags= "${local.tags}"
  sku {
    name = "standard"
  }
}
