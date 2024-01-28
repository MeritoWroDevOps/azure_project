terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.89.0"
    }
  }
    backend "azurerm" {
      resource_group_name  = "maciektf-resources"
      storage_account_name = "maciektfstoracc"
      container_name       = "maciektfcontent"
      key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
    features {}
}