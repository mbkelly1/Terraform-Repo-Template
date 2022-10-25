# Remember to change the environment specific characters in the variables between dev, test, and prod

backend_storage_account_account_tier             = "Standard"
backend_storage_account_account_replication_type = "RAGRS"
backend_storage_account_account_kind             = "StorageV2"
backend_storage_account_name                     = "aisprodtfstate2022"  # storage account name needs to be globally unique
backend_identity_type                            = "SystemAssigned"
backend_container_access_type                    = "private"
backend_container_name                           = "aisprodtfstate"      # name of cor backend container
backend_container_name_net                       = "aisprodtfstatenet"   # name of net backend container
backend_container_name_app                       = "aisprodtfstateapp"   # name of app backend container
backend_container_name_data                      = "aisprodtfstatedata"  # name of data backend container
location                                         = "South Central US"
cor_resource_group_name                          = "ais-cor-demo-p-rgp-01"