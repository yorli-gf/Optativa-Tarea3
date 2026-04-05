terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# Intentará crear el grupo. 
# Si el pipeline falla aquí por "AlreadyExists", 
# la solución rápida es la que te pongo abajo en el YAML.
resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}