terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
    backend "azurerm" {
      resource_group_name = "rg-terraform-state-dev"
      storage_account_name = "stabcd123"
      container_name = "ctabcd123"
      key = "devops-dev"
    }
  }

  provider "azurerm" {
    features {}
    subscription_id = ""
  }
