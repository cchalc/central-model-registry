#############################################################################
# Resources
#############################################################################
#####################
# Provider
#####################

provider "azurerm" {
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  features {}
}

provider "random" {
}

module "dev" {
  source = "./workspace/"

  dbx_workspace_name = "cmr-dev"
}

module "qa" {
  source = "./workspace/"

  dbx_workspace_name = "cmr-qa"
}

module "prod" {
  source = "./workspace/"

  dbx_workspace_name = "cmr-prod"
}

module "crm" {
  source = "./workspace/"

  dbx_workspace_name = "cmr-workspace"
}