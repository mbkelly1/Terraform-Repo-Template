# This where all all of your re-usable IaC code is stored for each module

# To run this code, navigate to your environment/networking folder where the provider and variables are specified

# Commands to run terraform:
# 1. authentication commands
# 2. terraform init 
# 3. terraform plan (if desired)
# 4. terraform apply

# NET Resource Group
resource "azurerm_resource_group" "rgp-net" {
  name     = var.net_resource_group_name
  location = var.location
}