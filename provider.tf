terraform {
  required_providers {
    azurerm = {}
  }
}

provider "azurerm" {
  features {}
}

data "azurerm_client_config" "current_client_config" {}

locals {
  common-tags = {
    project-name        = var.project-name
    resource-location   = var.resource-location
    environment         = var.environment
    application-name    = var.application-name
    product-owner       = var.product-owner
    environment-version = var.environment-version
  }

  resource-group-name     = "${var.project-name}-${var.application-name}-${var.environment}-v${var.environment-version}-rg"
  tf-resource-group-name  = "${var.project-name}-${var.application-name}tf-${var.environment}-v${var.environment-version}-rg"
  resource-name-prefix    = "${var.project-name}-${var.application-name}-${var.environment}"
  us-resource-name-prefix = replace(local.resource-name-prefix, "-", "_")
}
