# variables.tf is where variables that are used in main.tf are declared

variable "location" {
    description = "The location of the resource"
    type        = string 
}

variable "cor_resource_group_name" {
  description = "Name of the cor resource group"
  type        = string
}

variable "backend_storage_account_name" {
  description = "Name of the backend storage account"
  type        = string
}

variable "backend_storage_account_account_tier" {
    description = "Storage account tier"
    type        = string
}

variable "backend_storage_account_account_replication_type" {
    description = "Storage account replication type"
    type        = string
}

variable "backend_storage_account_account_kind" {
    description = "Storage account kind"
    type        = string
}

variable "backend_identity_type" {
    description = "Storage account identity type"
    type        = string
}

variable "backend_container_name" {
    description = "Name of the cor backend container"
    type        = string  
}

variable "backend_container_name_net" {
    description = "Name of the net backend container"
    type        = string  
}

variable "backend_container_name_app" {
    description = "Name of the app backend container"
    type        = string  
}

variable "backend_container_name_data" {
    description = "Name of the data backend container"
    type        = string  
}

variable "backend_container_access_type" {
    description = "The containers access type"
    type        = string 
}         