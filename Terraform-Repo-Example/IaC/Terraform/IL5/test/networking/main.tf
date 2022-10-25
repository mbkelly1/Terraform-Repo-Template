# Remember to change the environment specific characters in the variables between dev, test, and prod

terraform {
  required_version = "1.2.9"
  //The backend for this is remote and currently exists in AZ-DAC-AERDR-D-COR-RGP-01
  //in vadacaerdrttfstatestg01/tfstate-dns-resources/terraform.tfstate
  backend "azurerm" {
    environment          = "public"
    resource_group_name  = "ais-cor-demo-t-rgp-01" # Change environment specific variable 
    storage_account_name = "aistesttfstate2022"    # test backend storage account name
    container_name       = "aistesttfstatenet"     # networking backend storage container
    key                  = "terraform.tfstate" 
  }
}

provider "azurerm" {
  environment = "South Central US"
  version = "= 2.93.0"
  features {}
}


module "networking" {
  source = "../../modules/networking"

  net_resource_group_name        = "ais-net-demo-t-rgp-01"
  location                       = "South Central US"
}