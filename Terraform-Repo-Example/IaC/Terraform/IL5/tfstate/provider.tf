# Provider block for TF State only

terraform {
    required_version       = "1.2.9"
    required_providers {
        azurerm = {
        source  = "hashicorp/azurerm"
        version = ">=2.93.0"
    }
  }
}


provider "azurerm" {
  features {}
}