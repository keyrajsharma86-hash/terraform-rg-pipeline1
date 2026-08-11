terraform {
  required_providers {
    azurerm={
        source = "hashicorp/azurerm"
        version = "5.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "keyraj-storage"
    storage_account_name = "backendstoragekeyraj"
    container_name = "backendcontainer"
    key = "tfstate"
     use_azuread_auth = true
     
  }
}



provider "azurerm" {
  features {
    
  }
}