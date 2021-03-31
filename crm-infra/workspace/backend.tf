terraform {
  required_providers {
    databricks = {
      source  = "databrickslabs/databricks"
      version = "0.3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "xx"
    storage_account_name = "xx"
    container_name       = "xx"
    key                  = "xx"
    access_key           = "xx"
  }
}


