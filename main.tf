# main.tf

terraform {
  required_version = ">= 0.12"
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "DiaxionPTYLTD"
    workspaces {
      prefix = "vault-aks-terraform-"
    }
  }
}

# Configure the Azure Provider
provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "~> 1.3"
  
}

# -----------------------------------------------------------------------------
# resourceGroup configuration
# -----------------------------------------------------------------------------
resource "azurerm_resource_group" "rg" {
  name     = "${var.prefix}-${var.environment}-rg"
  location = var.location
  tags     = var.tags
}