# Remember to change the environment specific characters in the variables between dev, test, and prod

backend_storage_account_account_tier             = "Standard"
backend_storage_account_account_replication_type = "RAGRS"
backend_storage_account_account_kind             = "StorageV2"
backend_storage_account_name                     = "aistesttfstate2022"  # storage account name needs to be globally unique
backend_identity_type                            = "SystemAssigned"
backend_container_access_type                    = "private"
backend_container_name                           = "aistesttfstate"      # name of cor backend container
backend_container_name_net                       = "aistesttfstatenet"   # name of net backend container
backend_container_name_app                       = "aistesttfstateapp"   # name of app backend container
backend_container_name_data                      = "aistesttfstatedata"  # name of data backend container
location                                         = "South Central US"
cor_resource_group_name                          = "ais-cor-demo-t-rgp-01"