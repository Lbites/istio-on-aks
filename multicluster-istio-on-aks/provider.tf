terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.10"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

resource "azurerm_resource_group" "westeurope" {
  name     = "istio-aks-westeurope"
  location = "westeurope"
}

resource "azurerm_resource_group" "eastus" {
  name     = "istio-aks-eastus"
  location = "eastus"
}
