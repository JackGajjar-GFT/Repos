# Terraform base config
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }

  backend "azurerm" {}

}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}