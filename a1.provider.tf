
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }

  }
  backend "azurerm" {
    resource_group_name  = "my_tf_storage"
    storage_account_name = "terraformgds"
    container_name           = "tfstate"
    key                  = "project.tfstate"
  }

}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  #skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
}