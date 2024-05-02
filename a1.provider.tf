
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

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id = var.client_id
  client_secret = var.client_secret
tenant_id = var.tenant_id
}

variable "client_id" {
  type = string
}

variable "client_secret" {
  type = string
}

variable "subscription_id" {
  type = string
}

variable "tenant_id" {
  type = string
}
