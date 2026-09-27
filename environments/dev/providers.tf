terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg_sinha"
    storage_account_name = "stgsinha"
    container_name       = "contstore"
    key                  = "microservice-infra-dev.tfstate"
  }
}

provider "azurerm" {
  features {}
}
