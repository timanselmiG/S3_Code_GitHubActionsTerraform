terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.4.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "ws-devops"
    storage_account_name = "devopshackathontfstate"
    container_name       = "tfstate"
    key                  = "tan0815.tfstate"
  }
}

provider "azurerm" {
  features {}
}

