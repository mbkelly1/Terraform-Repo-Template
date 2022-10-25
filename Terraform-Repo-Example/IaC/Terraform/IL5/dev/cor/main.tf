terraform {
  required_version = "1.2.9"
  //The backend for this is remote and currently exists in AZ-DAC-AERDR-D-COR-RGP-01
  //in vadacaerdrttfstatestg01/tfstate-dns-resources/terraform.tfstate
  backend "azurerm" {
    environment          = "public"
    resource_group_name  = "ais-cor-demo-d-rgp-01"
    storage_account_name = "aisdevtfstate2022"      # dev backend storage account name
    container_name       = "aisdevtfstate"          # cor backend storage container
    key                  = "terraform.tfstate" 
  }
}

provider "azurerm" {
  environment = "South Central US"
  version = "= 2.93.0"
  features {}
}

# This code block specifies the location of the module where the re-usable IaC is located
# and the values of the variables used in the module main.tf and declared in the module variables.tf

module "cor" {
  source = "../../modules/cor"

  location                       = "South Central US"
}