terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.63.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "02846caf-bf53-491f-897c-a322a1632bf8"
  features {

  }
}
