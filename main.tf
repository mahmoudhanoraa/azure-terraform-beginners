provider "azurerm" {
  version = "~>2.0"
  features {}
}

resource "azurerm_resource_group" "tf_azure_guide" {
  name     = "${var.resource_group_name}"
  location = "${var.resource_group_location}"
}

resource "azurerm_app_service_plan" "tf_azure_guide" {
  name     = "${var.resource_group_name}"
  location = "${var.resource_group_location}"
  resource_group_name = "${var.resource_group_name}"

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "tf_azure_guide" {
  name                = "ex_hanora_hanora"
  location            = "${var.resource_group_location}"
  resource_group_name = "${var.resource_group_name}"
  app_service_plan_id = azurerm_app_service_plan.tf_azure_guide.id

  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
  }

  app_settings = {
    "SOME_KEY" = "some-value"
  }
}
