terraform {
  required_providers {
    azurerm = {}
  }
}

provider "azurerm" {
  features {}
}

locals {
  common-tags = {
    project-name        = var.project-name
    resource-location   = var.resource-location
    environment         = var.environment
    application-name    = var.application-name
    product-owner       = var.product-owner
    environment-version = var.environment-version
  }

  tf-resource-group-name = "${var.project-name}-${var.application-name}tf-${var.environment}-v${var.environment-version}-rg"
}
