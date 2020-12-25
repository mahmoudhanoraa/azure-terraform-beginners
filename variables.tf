##############################################################################
# Variables File
#
# Here is where we store the default values for all the variables used in our
# Terraform code. If you create a variable with no default, the user will be
# prompted to enter it (or define it via config file or command line flags.)



variable "subscription_id" {
  default = "e56d719b-2151-4bf9-b970-545e452095c6"
}
variable "tenant_id" {
  default = "ad2a8324-bef7-46a8-adb4-fe51b6613b24"
}
variable "resource_group_name" {
  default = "VelidaCosmosDBTerraform-rg"
}
variable "resource_group_location" {
  default = "australiaeast"
}
variable "cosmos_db_account_name" {
  default = "velidacosmosterraform"
}
variable "failover_location" {
  default = "australiasoutheast"
}
