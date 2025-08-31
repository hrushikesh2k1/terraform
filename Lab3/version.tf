terraform {
  required_providers{
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
  backend "azurerm" {
    resource_group_name = "rg-terraform-statefile"
    storage_account_name = "stabcd123"
    container_name = "ctabcd1234"
    key = "app_name-env_name"
  }

  provider "azurerm" {
    features{}
    subscription_id = ""
  }
  
  
