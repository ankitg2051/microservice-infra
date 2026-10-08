terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "Common_RG"
    storage_account_name = "commonstgoct2026"
    container_name       = "contstore"
    key                  = "microservice-infra-dev.tfstate"
  }
}

provider "azurerm" {
  features {}
}
