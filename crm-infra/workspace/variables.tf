##################################################################################
# VARIABLES
##################################################################################

#####################
# Locals
#####################

locals {
  prefix = "tf${random_string.naming.result}"
  tags = {
    Name = "Demo environment for CMR"
    Owner       = var.owner

  }
}

#####################
# Inputs
#####################

variable "owner" {
  type    = string
  default = "data.bricks@databricks.com"
}


#####################
# Variables
#####################

variable "dbx_workspace_name" {
  type        = string
  description = "Workspace name"
}