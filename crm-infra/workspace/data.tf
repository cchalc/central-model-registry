#############################################################################
# Variables
#############################################################################

data "azurerm_resource_group" "rg" {
  name = "databricks-rg"
}

data "databricks_node_type" "smallest" {
  local_disk = true
}