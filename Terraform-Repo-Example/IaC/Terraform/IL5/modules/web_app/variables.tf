# variables.tf is where variables that are used in main.tf are declared
# See tfstate/variables.tf for a syntax example

variable "app_resource_group_name" {
  description = "Name of the app resource group"
  type        = string
}

variable "location" {
    description = "The location of the resource"
    type        = string 
}