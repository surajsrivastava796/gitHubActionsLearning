terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.63.0"
    }
  }

backend "azurerm" {
  resource_group_name =  "terraform-state-rg"
  storage_account_name = "demogastgdev"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
  container_name       = "demo-ga-cont"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
  key                  = "dev.terraform.tfstate"                     # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
}
}
provider "azurerm" {
  subscription_id = "02846caf-bf53-491f-897c-a322a1632bf8"
  features {

  }
}
