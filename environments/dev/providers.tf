terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "ankit-rg"
    storage_account_name = "storegoyal1121"
    container_name       = "contstore"
    key                  = "microservice-infra-dev.tfstate"
  }
}

provider "azurerm" {
  features {}
}
