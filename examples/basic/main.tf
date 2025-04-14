terraform {
  required_version = "~>1.10"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.3"
    }
  }
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

module "sa" {
  source         = "git::https://github.com/JamieYnonan/terraform-azurerm-storage-account.git?ref=v1"
  rg_name        = "rg-abc123-001"
  st_instance    = 1
  st_project     = "abc"
  container_name = "container"
}
