terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
    backend "azurerm" {
        resource_group_name  = "tfstate"
        storage_account_name = "tfstate1499067370"
        container_name       = "tfstate"
        key                  = "terraform.tfstate"
    }

}

provider "azurerm" {
  features {}
}

