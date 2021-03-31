##################################################################################
# VARIABLES
##################################################################################

#####################
# Variables
#####################

variable "dbx_workspaces" {
  default     = ["cmr-demo-dev", "cmr-demo-qa", "cmr-demo-prod", "cmr"]
  description = "List names for workspaces to create"
}

variable "subscription_id" {
  type = string
}
variable "client_id" {
  type = string
}
variable "client_secret" {
  type = string
}
variable "tenant_id" {
  type = string
}