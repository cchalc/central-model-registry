#############################################################################
# Resources
#############################################################################

#####################
# Providers
#####################

/*provider "databricks" {
  azure_workspace_resource_id = azurerm_databricks_workspace.this.id
}*/

#####################
# Resources
#####################

resource "random_string" "naming" {
  special = false
  upper   = false
  length  = 6
}

resource "azurerm_databricks_workspace" "this" {
  name                        = var.dbx_workspace_name
  resource_group_name         = data.azurerm_resource_group.rg.name
  location                    = data.azurerm_resource_group.rg.location
  sku                         = "premium"
  managed_resource_group_name = "${local.prefix}-workspace-rg"
  tags                        = local.tags
}

/*resource "databricks_token" "pat" {
  comment  = "${var.dbx_workspace_name}-token"
  // 100 day token
  lifetime_seconds = 8640000
}*/

#####################
# Outputs
#####################

/*output "databricks_token" {
  value     = databricks_token.pat.token_value
  sensitive = true
}*/

output "databricks_host" {
  value = "https://${azurerm_databricks_workspace.this.workspace_url}/"
}
