terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.47.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "databricks-rg"
    storage_account_name = "databricksv2"
    container_name       = "crmtfstate"
    key                  = "crm.terraform.state"
    access_key           = "xx"
  }
}
