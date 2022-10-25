# TF state needs to be run first
# TF State will store the current state of terraform in a separate backend storage account for each module
# The Provider block at the top of dev, test, and prod main.tf files will specify the backend storage container 

# 1. Navigate to IL5/tfstae in PowerShell or your integrated terminal
# 2. Run authentication commands
# 3. terraform init
# 4. terraform apply -var-file="workspaces/dev.tfvars"
#    4b.terraform apply -var-file="workspaces/test.tfvars"
#    4c.terraform apply -var-file="workspaces/prod.tfvars"


# COR Resource Group for TF State 
resource "azurerm_resource_group" "rgp-tfstate" {
  name     = var.cor_resource_group_name
  location = var.location
}

# TF State Storage Account 
resource "azurerm_storage_account" "tfstate" {
  name                     = var.backend_storage_account_name
  resource_group_name      = var.cor_resource_group_name
  location                 = var.location
  account_tier             = var.backend_storage_account_account_tier
  account_replication_type = var.backend_storage_account_account_replication_type 
  account_kind             = var.backend_storage_account_account_kind

  identity {
    type = var.backend_identity_type
  }
}


# TF State Container cor
resource "azurerm_storage_container" "tfstate_container" {
  name                  = var.backend_container_name
  storage_account_name  = azurerm_storage_account.tfstate.name
  container_access_type = var.backend_container_access_type
}

# TF State Container net
resource "azurerm_storage_container" "tfstate_container_net" {
  name                  = var.backend_container_name_net
  storage_account_name  = azurerm_storage_account.tfstate.name
  container_access_type = var.backend_container_access_type
}

# TF State Container cor
resource "azurerm_storage_container" "tfstate_container_app" {
  name                  = var.backend_container_name_app
  storage_account_name  = azurerm_storage_account.tfstate.name
  container_access_type = var.backend_container_access_type
}


# TF State Container cor
resource "azurerm_storage_container" "tfstate_container_data" {
  name                  = var.backend_container_name_data
  storage_account_name  = azurerm_storage_account.tfstate.name
  container_access_type = var.backend_container_access_type
}